#!/bin/sh

mkdir build
cd build

export LD_LIRARY_PATH=$PATH:/opt/opencl_lib/lib:/usr/local/lib

cmake ../ -GNinja -DCMAKE_C_COMPILER="/usr/bin/gcc" -DOpenCL_INCLUDE_DIR="/opt/opencl_lib/incude" -DOpenCL_LIBRARY="/opt/opencl_lib/lib/libOpenCL.so" -DCOMPUTECPP_PACKAGE_ROOT_DIR="/usr/local"

ls