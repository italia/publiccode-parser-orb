# CircleCI Orb for publiccode.yml validation

[![CircleCI Build Status](https://circleci.com/gh/bfabio/publiccode-parser.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/bfabio/publiccode-parser)
[![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/bfabio/publiccode-parser)](https://circleci.com/orbs/registry/orb/bfabio/publiccode-parser)
[![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/romain325/pcvalidate-orb/master/LICENSE)

## Usage

This orb validates publiccode.yml files using the [publiccode-parser-go](https://github.com/italia/publiccode-parser-go)

You can use it in your workflow to easly check if your publiccode.yml is valid.

Example:

```yml
orbs:
    publiccode-parser: italia/publiccode-parser-orb@<version>
    # Other orbs

workflows:
  test_my_app:
    jobs:
      - publiccode-parser/validate
```

see the [orb registry listing](https://circleci.com/orbs/registry/orb/bfabio/publiccode-parser)
for the full documentation and examples.
