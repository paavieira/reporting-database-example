FROM kong:latest

ENV KONG_DATABASE postgres
ENV KONG_PG_HOST kong-database

CMD kong migrations up