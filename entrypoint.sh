#!/usr/bin/env bash

set -euo pipefail

echo "Args: $*"

# We want word splitting here, see: the action.yml file
# shellcheck disable=SC2068 
/src/find_unicode_control2.py $@
