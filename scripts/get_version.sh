#!/usr/bin/env bash

# Exit script as soon as a command fails.
set -o errexit

echo "$(node --print --eval "require('./package.json').version")"