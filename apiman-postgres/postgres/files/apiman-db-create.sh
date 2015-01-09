#!/bin/sh
echo "******CREATING APIMAN DATABASE******"
# su -c "psql -d apiman -f /docker-entrypoint-initdb.d/apiman_postgresql.ddl"  -s /bin/sh postgres
gosu  postgres postgres --single -j apiman < /docker-entrypoint-initdb.d/apiman_postgresql.ddl
echo ""
echo "******APIMAN DATABASE CREATED******"