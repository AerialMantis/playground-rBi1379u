# Hello World

This first exercise will guide you through the steps involved in writing your first SYCL application. In true first application fashion the aim will be to simply print "Hello World" to the console, however as this is SYCL you will be printing "Hello World" from the GPU.

@[Hello World from SYCL]({"stubs": ["src/exercises/hello_world.cpp"],"command": "sh /project/target/run.sh hello_world", "layout": "aside"})

## Including the SYCL Runtime

Everything you need to write a SYCL application is included in the header file `CL/sycl.hpp`:

```cpp
#include "CL/sycl.hpp"
```

## Creating a Queue

In SYCL there are various different way to configure the devices available on our system however to make things easier SYCL provides defaults for the most common use cases, and the minimal object required to submit work is a `cl::sycl::queue`. A `cl::sycl::queue` can be default constructed; in which it case will ask the SYCL runtime to pick a device for you based on what's available in your system. There are other ways to ask SYCL to select a specific device based on your needs which we will cover in a later exercise, but for now this is all you need.

1. Default construct a `cl::sycl::queue` object:

```cpp
cl::sycl::queue myQueue;
```

## Creating a Command Group

In SYCL a task is represented by what's called a command group. A command group contains a SYCL kernel function which can be executed on a device and any data dependencies that kernel function has. A command group is defined using a C++ function object (either a lambda function or a struct with a function call operator). The C++ function object must take a single parameter; a `cl::sycl::handler &`, which is used to link together data the SYCL kernel function and it's data depencies.

In this exercise we have provided the command group for you.

## Creating an Output Stream

In SYCL there are various objects which can be used to access data from within a SYCL kernel which are generally constructed within the scope of a command group. One of the simplest, which we are going to use in this exercise is a `cl::sycl::stream`. A `cl::sycl::stream` is a buffer output stream, behaving similarly to `std::ostream`, with the main difference being that it does not output to the console directly and instead buffers the output until after the kernel function is finished executing. A `cl::sycl::stream` must be constructed with three parameters, the maximum size of the buffer in bytes, the maximum length of a statement in bytes and the `cl::sycl::handler` associated with the command group scope it is created in.

1. Construct a `cl::sycl::stream` with a maximum buffer size of `1024`, a maximum statement length of `128` and the `cl::sycl::handler` provided by the command group function object:

```cpp
cl::sycl::stream(1024, 128, cgh);
```




