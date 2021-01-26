#!/bin/bash -e

# Test linking against glut with CMake
cd test

cmake -GNinja -DCMAKE_BUILD_TYPE=Release .

cmake --build . --config Release

./test
