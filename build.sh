#!/bin/bash
#

#
cd paises-api/ && ./gradlew docker
cd ..
#
cd ufs-api/ && ./gradlew docker
cd ..
#
cd municipios-api/ && ./gradlew docker
cd ..
#
cd redis/ && docker build -t com.paavieira/redis .
cd ..
#
cd postgresql/ && docker build -t com.paavieira/postgresql .
cd ..
#
cd elasticsearch/ && docker build -t com.paavieira/elasticsearch .
cd ..
#
cd logstash/ && docker build -t com.paavieira/logstash .
cd ..
#
cd kong/ && docker build -t com.paavieira/kong .
cd ..
#
cd kong-database/ && docker build -t com.paavieira/kong-database .
cd ..
#
cd kong-migrations/ && docker build -t com.paavieira/kong-migrations .
cd ..
