#!/bin/bash
set -euo pipefail

vol_restore() {
  vol_name=$1
  docker run -i --rm \
    -v ${vol_name}:/volume \
    alpine \
    tar -x -C /volume \
    < /var/backups/x-apm-timescaledb/${vol_name}.tar
}

vol_restore x-apm-timescaledb_data
vol_restore x-apm-timescaledb_grafana_data
