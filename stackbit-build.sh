#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://localhost:8092/init.js 6073d7ca18be653f093d0b15

echo "stackbit-build.sh: finished build"
