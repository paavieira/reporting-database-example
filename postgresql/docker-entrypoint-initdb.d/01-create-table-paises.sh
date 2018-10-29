#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "docker" --dbname "docker" <<-EOSQL
    CREATE TABLE "paises"
    (
        "pais_cd" smallint NOT NULL,
        "pais_nm" character varying(60) COLLATE pg_catalog."default",
        CONSTRAINT "paises_pk" PRIMARY KEY ("pais_cd")
    )
    WITH (
        OIDS = FALSE
    )
    TABLESPACE pg_default;
    ALTER TABLE "paises"
        OWNER to docker;


EOSQL
