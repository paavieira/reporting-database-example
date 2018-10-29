FROM postgres:9.6

ENV LANG pt_BR.utf8
ENV POSTGRES_USER kong
ENV POSTGRES_DB kong

RUN localedef -i pt_BR -c -f UTF-8 -A /usr/share/locale/locale.alias pt_BR.UTF-8

EXPOSE 5432