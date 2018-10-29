#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "docker" --dbname "docker" <<-EOSQL
    Insert into "paises" ("pais_cd","pais_nm") values ('105','BRASIL');
EOSQL
