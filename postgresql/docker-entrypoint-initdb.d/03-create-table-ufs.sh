#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "docker" --dbname "docker" <<-EOSQL
    CREATE TABLE "ufs"
    (
        "uf_sg" character varying(2) COLLATE pg_catalog."default",
        "uf_nm" character varying(60) COLLATE pg_catalog."default",
        CONSTRAINT "ufs_pk" PRIMARY KEY ("uf_sg")
    )
    WITH (
        OIDS = FALSE
    )
    TABLESPACE pg_default;
    ALTER TABLE "ufs"
        OWNER to docker;


EOSQL
