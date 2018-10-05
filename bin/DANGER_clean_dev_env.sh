#!/bin/bash
set -euo pipefail

docker-compose down --remove-orphans
volumes=$(docker volume ls -q --filter label=de.felixhummel.project=x-apm-timescaledb)
[[ -n $volumes ]] && docker volume rm $volumes
