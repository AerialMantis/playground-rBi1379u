#!/bin/sh

# -DOpenCL_INCLUDE_DIR="/opt/opencl_lib/incude" -DOpenCL_LIBRARY="/opt/opencl_lib/lib/libOpenCL.so"
# export LD_LIRARY_PATH=$PATH:/opt/opencl_lib/lib:/usr/local/lib

mkdir build
cd build

cmake ../ -GNinja -DCMAKE_CXX_COMPILER="/usr/bin/gcc" -DCOMPUTECPP_PACKAGE_ROOT_DIR="/usr/local/computecpp"

ninja