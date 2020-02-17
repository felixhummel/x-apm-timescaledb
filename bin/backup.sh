#!/bin/bash
set -euo pipefail

vol_backup() {
  vol_name=$1
  docker run --rm \
    -v ${vol_name}:/volume \
    alpine \
    tar -c -C /volume . \
    > /var/backups/x-apm-timescaledb/${vol_name}.tar
}

vol_backup x-apm-timescaledb_data
vol_backup x-apm-timescaledb_grafana_data
