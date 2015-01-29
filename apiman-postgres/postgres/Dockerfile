FROM postgres:9.4

# Add database creation 
COPY files/apiman_postgresql.ddl /docker-entrypoint-initdb.d/
COPY files/apiman_postgresql-data.ddl /docker-entrypoint-initdb.d/
COPY files/apiman-db-create.sh /docker-entrypoint-initdb.d/
