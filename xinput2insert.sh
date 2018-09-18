#!/bin/bash
set -euo pipefail

IFS='' cat /dev/stdin | while read line; do
  t=$(echo $line | cut -d' ' -f1)
  event=$(echo $line | cut -d' ' -f2)
  echo "INSERT INTO apm VALUES ('$t', '$event');"
done
