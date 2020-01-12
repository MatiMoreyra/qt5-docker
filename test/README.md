# Tests

A sample executable project based on Qt5 is provided to test built images.

## Requirements
  - The build hook builds images for all the tags defined in `hooks/tags`.
  - For every built image, `executeble/build.sh` should exit with code 0. This ensures that we can build a Qt5 project with CMake and run tests with GTest.
