#!/bin/sh

mkdir build
cd build

cmake ../ -GNinja -DCMAKE_C_COMPILER="/usr/bin/gcc"