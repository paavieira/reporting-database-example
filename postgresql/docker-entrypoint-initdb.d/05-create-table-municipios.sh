#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "docker" --dbname "docker" <<-EOSQL
    CREATE TABLE "municipios"
    (
        "muni_cd" smallint,
        "muni_nm" character varying(60) COLLATE pg_catalog."default",
        "muni_uf_sg" character varying(2) COLLATE pg_catalog."default",
        CONSTRAINT "municipios_pk" PRIMARY KEY ("muni_cd")
    )
    WITH (
        OIDS = FALSE
    )
    TABLESPACE pg_default;
    ALTER TABLE "municipios"
        OWNER to docker;


EOSQL
