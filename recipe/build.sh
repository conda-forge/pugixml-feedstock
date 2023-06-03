#!/bin/bash
set -e
set -x

mkdir build
cd build

cmake ${CMAKE_ARGS} .. \
 -DCMAKE_BUILD_TYPE=Release \
 -DBUILD_SHARED_LIBS=ON \
 -DBUILD_SHARED_AND_STATIC_LIBS=ON || exit 1

make -j $CPU_COUNT || exit 1

make install
