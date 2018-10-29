#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "docker" --dbname "docker" <<-EOSQL
    Insert into ufs (uf_sg,uf_nm) values ('AC','ACRE');
    Insert into ufs (uf_sg,uf_nm) values ('AL','ALAGOAS');
    Insert into ufs (uf_sg,uf_nm) values ('AM','AMAZONAS');
    Insert into ufs (uf_sg,uf_nm) values ('AP','AMAPÁ');
    Insert into ufs (uf_sg,uf_nm) values ('BA','BAHIA');
    Insert into ufs (uf_sg,uf_nm) values ('CE','CEARÁ');
    Insert into ufs (uf_sg,uf_nm) values ('DF','DISTRITO FEDERAL');
    Insert into ufs (uf_sg,uf_nm) values ('ES','ESPÍRITO SANTO');
    Insert into ufs (uf_sg,uf_nm) values ('EX','EXTERIOR');
    Insert into ufs (uf_sg,uf_nm) values ('GO','GOIÁS');
    Insert into ufs (uf_sg,uf_nm) values ('MA','MARANHÃO');
    Insert into ufs (uf_sg,uf_nm) values ('MG','MINAS GERAIS');
    Insert into ufs (uf_sg,uf_nm) values ('MS','MATO GROSSO DO SUL');
    Insert into ufs (uf_sg,uf_nm) values ('MT','MATO GROSSO');
    Insert into ufs (uf_sg,uf_nm) values ('PA','PARÁ');
    Insert into ufs (uf_sg,uf_nm) values ('PB','PARAÍBA');
    Insert into ufs (uf_sg,uf_nm) values ('PE','PERNAMBUCO');
    Insert into ufs (uf_sg,uf_nm) values ('PI','PIAUÍ');
    Insert into ufs (uf_sg,uf_nm) values ('PR','PARANÁ');
    Insert into ufs (uf_sg,uf_nm) values ('RJ','RIO DE JANEIRO');
    Insert into ufs (uf_sg,uf_nm) values ('RN','RIO GRANDE DO NORTE');
    Insert into ufs (uf_sg,uf_nm) values ('RO','RONDÔNIA');
    Insert into ufs (uf_sg,uf_nm) values ('RR','RORAIMA');
    Insert into ufs (uf_sg,uf_nm) values ('RS','RIO GRANDE DO SUL');
    Insert into ufs (uf_sg,uf_nm) values ('SC','SANTA CATARINA');
    Insert into ufs (uf_sg,uf_nm) values ('SE','SERGIPE');
    Insert into ufs (uf_sg,uf_nm) values ('SP','SÃO PAULO');
    Insert into ufs (uf_sg,uf_nm) values ('TO','TOCANTINS');
EOSQL
