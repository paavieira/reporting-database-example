#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "docker" --dbname "docker" <<-EOSQL

  CREATE FUNCTION municipios_replication_trigger() RETURNS trigger AS \$municipios_replication_trigger\$
    DECLARE
      body json;
      response character varying;
    BEGIN
      select row_to_json(NEW) into body;
      select http_post('http://logstash:8080', body) into response;
      RETURN NEW;
    END;
  \$municipios_replication_trigger\$ LANGUAGE plpgsql;

  CREATE TRIGGER municipios_replication_trigger
    BEFORE INSERT OR UPDATE ON municipios
    FOR EACH ROW EXECUTE PROCEDURE municipios_replication_trigger();

EOSQL
