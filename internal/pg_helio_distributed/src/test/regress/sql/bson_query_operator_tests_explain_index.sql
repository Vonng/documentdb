SET search_path TO helio_core,helio_api,helio_api_catalog,helio_api_internal;
SET citus.next_shard_id TO 1200000;
SET helio_api.next_collection_id TO 1200;
SET helio_api.next_collection_index_id TO 1200;

SELECT helio_api.drop_collection('db', 'queryoperator') IS NOT NULL;
SELECT helio_api.create_collection('db', 'queryoperator');

SELECT helio_api.drop_collection('db', 'nullfield') IS NOT NULL;
SELECT helio_api.create_collection('db', 'nullfield');

SELECT helio_api.drop_collection('db', 'singlepathindexexists') IS NOT NULL;
SELECT helio_api.create_collection('db', 'singlepathindexexists');

-- create a wildcard index
SELECT helio_api_internal.create_indexes_non_concurrently('db', helio_distributed_test_helpers.generate_create_index_arg('queryoperator', 'queryoperator_wildcard', '{"$**": 1}'), true);
SELECT helio_api_internal.create_indexes_non_concurrently('db', helio_distributed_test_helpers.generate_create_index_arg('nullfield', 'nullfield_wildcard', '{"$**": 1}'), true);

-- create single path index
SELECT helio_api_internal.create_indexes_non_concurrently('db', helio_distributed_test_helpers.generate_create_index_arg('singlepathindexexists', 'a_index', '{"a": 1}'), true);

BEGIN;
-- avoid sequential scan (likely to be preferred on small tables)
set local enable_seqscan TO off;
set local helio_api.forceUseIndexIfAvailable to on;

\i sql/bson_query_operator_tests_explain_core.sql
ROLLBACK;
