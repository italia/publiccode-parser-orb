# Public Code Validate Orb
<!--
[![CircleCI Build Status](https://circleci.com/gh/romain325/pcvalidate-orb.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/romain325/pcvalidate-orb) [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/romain325/pcvalidate-orb)](https://circleci.com/orbs/registry/orb/romain325/pcvalidate-orb) [![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/romain325/pcvalidate-orb/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)
-->

## Usage

This orb is a orb wrapper for the [Public Code Parser](https://github.com/italia/publiccode-parser-go)  
You can use it in your workflow to easly check if your publiccode.yml is valid.  

## How to add it to your Workflow

The orb is of course OpenSoure and accessible in the [Orb Registry](https://circleci.com/orbs/registry/orb/romain325/pcvalidate-orb)  
You just need to reference it in the orbs section of your workflow like so:

```yml
orbs:
    romain325/pcvalidate-orb@<version>
    # Other orbs
```

## How to use it  

For precise example, you can refer to the [examples](src/examples/example.yml).  

### Default use

Default path is the current path(root of your project) and **publiccode.yml** as the name of your file

```yml
- workflows:
    thats-a-workflow:
        jobs:
            - pcvalidate-orb/checkFile
```

--------------------

You can add parameters to it to precise the workflow you want.  
Here is all the parameter you can find in this project:

```yml
filename:
    default: publiccode.yml
    description: Name of the publiccode file
    type: string
path:
    default: ""
    description: An absolute or relative path pointing to a locally cloned repository where the publiccode.yml is located.
    type: string
no-network:
    default: false
    description: Disables checks that require network connections (URL existence and oEmbed). This makes validation much faster.
    type: boolean
no-strict:
    default: false
    description: Disable strict mode.
    type: boolean
remote-base-url:
    default: ""
    description: The URL pointing to the directory where the publiccode.yml file is located.
    type: string
```

## Resources

[CircleCI Orb Registry Page](https://circleci.com/orbs/registry/orb/romain325/pcvalidate-orb) - The official registry page of this orb for all versions, executors, commands, and jobs described.
[CircleCI Orb Docs](https://circleci.com/docs/2.0/orb-intro/#section=configuration) - Docs for using and creating CircleCI Orbs.
