#!/bin/bash
# exit when any command fails
set -e
trap "exit \$?" INT TERM EXIT

# Go to script directory
pushd "$(dirname "${BASH_SOURCE[0]}")" > /dev/null 2>&1

# Remove _build/ directory
rm -rf _build/

popd > /dev/null 2>&1
