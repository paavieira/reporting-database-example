FROM postgres:10.4

RUN localedef -i pt_BR -c -f UTF-8 -A /usr/share/locale/locale.alias pt_BR.UTF-8
ENV LANG pt_BR.utf8

RUN apt-get update \
      && apt-get install -y --no-install-recommends \
      postgresql-contrib-$PG_MAJOR \
      postgresql-plpython-$PG_MAJOR \
      && rm -rf /var/lib/apt/lists/*

COPY ./docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/
