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

## How to release (for developers of this orb)

1. Create a feature branch and work on changes

1. Check for errors with `circleci config validate`

1. Put `[semver:patch]` in your commit subject to automatically bump the orb
   version (or `[semver:minor]` or `[semver:major]`)

1. Push the feature branch to **`italia/publiccode-parser-orb`**, not your own fork.

1. Open a PR, the build scripts will start

1. If the build errors out with
   `"Cannot find italia/publiccode-parser@dev:alpha in the orb registry"`.

    1. ```shell
       circleci orb pack src > file.yml
       circleci orb validate file.yml
       circleci orb publish file.yml italia/publiccode-parser@dev:alpha
       ```

    1. Rerun the build

1. Approve the `hold-for-dev-publish` job in CircleCI

1. The `publish-dev` job will publish a new development orb (`italia/publiccode-parser@dev:alpha`)

1. If the `integration-dev` workflow passes, get review and merge to master

1. Approve `hold-for-dev-publish` again when the pipeline on master runs

1. Check the new version is published and create a new PR bumping the version
   in the README as well
