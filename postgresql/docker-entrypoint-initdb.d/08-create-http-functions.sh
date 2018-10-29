#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "docker" <<-EOSQL

  -- http_get

  CREATE OR REPLACE FUNCTION public.http_get(
    uri character varying)
      RETURNS character varying
      LANGUAGE 'plpythonu'
      COST 100
      VOLATILE 
  AS \$BODY\$
    import urllib2  
    data = urllib2.urlopen(uri)  
    return data.read()
  \$BODY\$;
  
  ALTER FUNCTION public.http_get(character varying) OWNER TO docker;

  -- http_post

  CREATE OR REPLACE FUNCTION public.http_post(
    uri character varying,
    params json)
      RETURNS character varying
      LANGUAGE 'plpythonu'
      COST 100
      VOLATILE 
  AS \$BODY\$
    import urllib2  
    params_len = len(params)
    req = urllib2.Request(uri, params, {'Content-Type': 'application/json', 'Content-Length': params_len, 'Accept': 'application/json'})
    data = urllib2.urlopen(req)
    return data.read()
  \$BODY\$;
  
  ALTER FUNCTION public.http_post(character varying, json) OWNER TO docker;

EOSQL
