# CircleCI Orb for publiccode.yml validation

[![CircleCI Build Status](https://circleci.com/gh/italia/publiccode-parser.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/italia/publiccode-parser)
[![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/italia/publiccode-parser)](https://circleci.com/orbs/registry/orb/italia/publiccode-parser)
[![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/romain325/pcvalidate-orb/master/LICENSE)

## Usage

This orb validates [`publiccode.yml`](https://github.com/italia/publiccode.yml) files
using [publiccode-parser-go](https://github.com/italia/publiccode-parser-go)

You can use it in your workflow to check if `publiccode.yml` in your repo is valid.

Example:

```yml
orbs:
    publiccode-parser: italia/publiccode-parser@0.0.2

workflows:
  test_my_app:
    jobs:
      - publiccode-parser/validate
```

see the [orb registry listing](https://circleci.com/orbs/registry/orb/italia/publiccode-parser)
for the full documentation and examples.
