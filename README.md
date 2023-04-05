# Unicode Control Characters Action

A GitHub Action to find Unicode control characters using the
Red Hat diagnostic tool https://access.redhat.com/security/vulnerabilities/RHSB-2021-007
to detect RHSB-2021-007 Trojan source attacks (CVE-2021-42574,CVE-2021-42694)

## Inputs

### `args`

**Required** The script arguments documented in [src/README.txt](src/README.txt).

## Example usage

```yaml
name: Tests

on:
  push:
    branches:
      - '**'

jobs:
  tests:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3

      - name: Run Tests
        uses: pierdipi/unicode-control-characters-action@main
        with:
          args: -d .
```
