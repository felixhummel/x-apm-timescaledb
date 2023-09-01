#!/bin/bash
set -euo pipefail

cat <<EOF
PGHOST=localhost
PGPORT=55432
PGDATABASE=postgres
PGUSER=postgres
PGPASSWORD=password
EOF
