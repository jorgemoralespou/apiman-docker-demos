FROM postgres:9.4

# Add database creation 
ADD files/apiman_postgresql.ddl /docker-entrypoint-initdb.d/
ADD files/apiman-db-create.sh /docker-entrypoint-initdb.d/
