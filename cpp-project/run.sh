#!/bin/sh

# export LD_LIRARY_PATH=$PATH:/opt/opencl_lib/lib:/usr/local/lib

mkdir build
cd build

cmake ../ -GNinja -DCMAKE_CXX_COMPILER="/usr/bin/g++" -DOpenCL_INCLUDE_DIR="$OCL_INC" -DOpenCL_LIBRARY="$OCL_LIB/libOpenCL.so" -DCOMPUTECPP_PACKAGE_ROOT_DIR="/usr/local/computecpp"

ninja