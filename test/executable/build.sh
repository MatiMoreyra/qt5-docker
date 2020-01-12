#!/bin/bash
# exit when any command fails
set -e
trap "exit \$?" INT TERM EXIT

# build
mkdir -p _build && cd _build
cmake .. -DCMAKE_BUILD_TYPE=Debug -DBUILD_SHARED_LIBS=ON -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
make -j"$(nproc)"
make test CTEST_OUTPUT_ON_FAILURE=TRUE
