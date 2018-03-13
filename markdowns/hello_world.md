# Hello World

This first tutorial will guide you through the steps involved in writing your first SYCL application. In true first tutorial fashion the aim will be to simply print "Hello World" to the console, however as this is SYCL you will be printing "Hello World" from the GPU.

@[Hello World from SYCL]({"stubs": ["src/exercises/hello_world.cpp"],"command": "sh /project/target/run.sh hello_world"})

## Including the SYCL Runtime

Everything you need to write a SYCL application is included in the `CL/sycl.hpp` header file.