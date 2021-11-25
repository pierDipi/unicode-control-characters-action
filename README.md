# Hello world docker action

This action prints "Hello World" to the log or "Hello" + the name of a person to greet. To learn how this action was built, see "[Creating a Docker container action](https://help.github.com/en/articles/creating-a-docker-container-action)" in the GitHub Help documentation.

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
        uses: actions/checkout@v2

      - name: Run Tests
        uses: pierdipi/unicode-control-characters-action@main
        with:
          args: -d .
```
