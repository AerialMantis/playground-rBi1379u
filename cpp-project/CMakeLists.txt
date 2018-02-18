cmake_minimum_required(VERSION 3.2.2)

project (universe)

include(${CMAKE_SOURCE_DIR}/cmake/Modules/FindComputeCpp.cmake)

set(CMAKE_CXX_STANDARD 14)

include_directories(SYSTEM ${COMPUTECPP_INCLUDE_DIRECTORY})

set(SOURCE_NAME "Universe")
add_executable(
  ${SOURCE_NAME}
  ${CMAKE_CURRENT_SOURCE_DIR}/${SOURCE_NAME}.cpp
)
add_sycl_to_target(
  ${SOURCE_NAME}
  ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/${SOURCE_NAME}.cpp
)

