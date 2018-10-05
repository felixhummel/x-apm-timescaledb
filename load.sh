#!/bin/bash
set -euo pipefail

IFS='' cat /dev/stdin | while read line; do
  echo $line
  echo $line | psql
done
