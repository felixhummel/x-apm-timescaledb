#!/bin/bash
set -euo pipefail

GRAFANA_URL=https://grafana.apm.x

read -s -p "Visit $GRAFANA_URL/org/apikeys and paste API key here: " GRAFANA_API_KEY

cat <<EOF
GRAFANA_URL=$GRAFANA_URL
GRAFANA_API_KEY=$GRAFANA_API_KEY
EOF
