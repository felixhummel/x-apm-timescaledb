#!/bin/bash
set -euo pipefail

# wait TIMEOUT seconds (in addition to the runtime of CMD)
TIMEOUT=${TIMEOUT:-30}

CMD="$@"

control_c() {
    echo  # new line for ^C character that is printed
    echo "Exiting."
    exit 1
}
trap control_c SIGINT


t=0
echo "waiting for service using command \"$CMD\""
while ! $CMD>/dev/null 2>&1; do
  sleep 1
  echo -n '.'
  let ++t
  if [[ $t -ge $TIMEOUT ]]; then
    echo
    echo "timeout (${TIMEOUT}s) reached. exiting."
    exit 1
  fi
done

echo
echo service booted in $t seconds
