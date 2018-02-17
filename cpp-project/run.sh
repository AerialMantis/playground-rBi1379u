#!/bin/sh

mkdir build
cd build

cmake ../ -GNinja -D CMAKE_C_COMPILER="/usr/bin/gcc"