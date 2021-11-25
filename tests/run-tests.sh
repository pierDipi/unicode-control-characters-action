#!/usr/bin/env bash

set -euo pipefail

docker build -t unicode-control-characters-actions .

failed=false

docker run --rm -ti unicode-control-characters-actions -d /src || failed=true

if [[ $failed == "false" ]]; then
  echo "Test failed, script didn't detect unicode control characters"
  exit 1
else
  echo "Tests pass"
fi
