FROM mysql:5.6

RUN mkdir -p /docker-entrypoint-initdb.d
COPY docker-entrypoint.sh /entrypoint.sh

# My customizations
COPY files/apiman_mysql5.ddl /docker-entrypoint-initdb.d/apiman.sql
