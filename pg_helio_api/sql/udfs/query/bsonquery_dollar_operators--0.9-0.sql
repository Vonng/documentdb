
CREATE OR REPLACE FUNCTION __API_CATALOG_SCHEMA__.bson_dollar_eq(__CORE_SCHEMA__.bson,__CORE_SCHEMA__.bsonquery)
 RETURNS bool
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
 SUPPORT __API_CATALOG_SCHEMA__.__EXTENSION_OBJECT__(_dollar_support)
AS 'MODULE_PATHNAME', $function$bson_dollar_eq$function$;

CREATE OR REPLACE FUNCTION __API_CATALOG_SCHEMA__.bson_dollar_lt(__CORE_SCHEMA__.bson,__CORE_SCHEMA__.bsonquery)
 RETURNS bool
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
 SUPPORT __API_CATALOG_SCHEMA__.__EXTENSION_OBJECT__(_dollar_support)
AS 'MODULE_PATHNAME', $function$bson_dollar_lt$function$;

CREATE OR REPLACE FUNCTION __API_CATALOG_SCHEMA__.bson_dollar_lte(__CORE_SCHEMA__.bson,__CORE_SCHEMA__.bsonquery)
 RETURNS bool
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
 SUPPORT __API_CATALOG_SCHEMA__.__EXTENSION_OBJECT__(_dollar_support)
AS 'MODULE_PATHNAME', $function$bson_dollar_lte$function$;

CREATE OR REPLACE FUNCTION __API_CATALOG_SCHEMA__.bson_dollar_gt(__CORE_SCHEMA__.bson,__CORE_SCHEMA__.bsonquery)
 RETURNS bool
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
 SUPPORT __API_CATALOG_SCHEMA__.__EXTENSION_OBJECT__(_dollar_support)
AS 'MODULE_PATHNAME', $function$bson_dollar_gt$function$;

CREATE OR REPLACE FUNCTION __API_CATALOG_SCHEMA__.bson_dollar_gte(__CORE_SCHEMA__.bson,__CORE_SCHEMA__.bsonquery)
 RETURNS bool
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
 SUPPORT __API_CATALOG_SCHEMA__.__EXTENSION_OBJECT__(_dollar_support)
AS 'MODULE_PATHNAME', $function$bson_dollar_gte$function$;
