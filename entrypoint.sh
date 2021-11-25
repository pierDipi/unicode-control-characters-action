#!/usr/bin/env bash

set -euo pipefail

echo "Args: $@"

/src/find_unicode_control2.py $@
