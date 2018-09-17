#!/bin/bash
set -euo pipefail

IFS='' cat /dev/stdin | while read line; do
  event=$(echo $line | cut -f2 -d' ')
  echo "INSERT INTO apm VALUES (NOW(), '$event');"
done
