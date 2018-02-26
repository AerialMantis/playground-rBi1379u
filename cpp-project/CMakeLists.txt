cmake_minimum_required(VERSION 3.2.2)

project (computecpp_sample)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake/Modules)
include(FindComputeCpp)

set(CMAKE_CXX_STANDARD 14)

include_directories(SYSTEM ${COMPUTECPP_INCLUDE_DIRECTORY})

set(SOURCE_NAME ${SAMPLE_NAME})

add_executable(
  ${SOURCE_NAME}
  ${CMAKE_CURRENT_SOURCE_DIR}/src/Exercises/${SOURCE_NAME}.cpp
)
add_sycl_to_target(
  ${SOURCE_NAME}
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/src/Exercises/${SOURCE_NAME}.cpp
)
