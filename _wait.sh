#!/bin/bash
set -euo pipefail

# wait TIMEOUT seconds (0 means forever)
TIMEOUT=${TIMEOUT:-30}
SLEEP=${SLEEP:-1}

control_c() {
    echo  # new line for ^C character that is printed
    echo "Exiting."
    exit 1
}
trap control_c SIGINT


t=0
echo "waiting for service using command \"$@\""
while ! "$@" >/dev/null 2>&1; do
  sleep $SLEEP
  echo -n '.'
  let ++t
  if [[ $t -ge $TIMEOUT && $TIMEOUT -gt 0 ]]; then
    echo
    echo "timeout (${TIMEOUT}s) reached. exiting."
    exit 1
  fi
done

echo
echo service booted in $t seconds
