#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER sonar;
    CREATE DATABASE sonar;
    GRANT ALL PRIVILEGES ON DATABASE sonar TO sonar;
    ALTER USER sonar WITH PASSWORD 'sonar';

EOSQL