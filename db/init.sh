#!/bin/bash
set -e

psql -v --username "api" --dbname "gardengnome" -c 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp";'
