# Please Action

This is a Github action for using the [please](https://www.please.build) build tool

## Example

```yaml
name: plz build
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: build
        uses: luke142367/please-action@master
        with:
          args: build //...
```