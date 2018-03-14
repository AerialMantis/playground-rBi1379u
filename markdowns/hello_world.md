# Hello World

This first tutorial will guide you through the steps involved in writing your first SYCL application. In true first tutorial fashion the aim will be to simply print "Hello World" to the console, however as this is SYCL you will be printing "Hello World" from the GPU.

@[Hello World from SYCL]({"stubs": ["src/exercises/hello_world.cpp"],"command": "sh /project/target/run.sh hello_world", "layout": "aside"})

## Including the SYCL Runtime

Everything you need to write a SYCL application is included in the header file `CL/sycl.hpp`:

```cpp
#include "CL\sycl.hpp"
```

## Creating a Queue

In SYCL there are various different way to configure the devices available on our system however to make things easier SYCL provides defaults for the most common use cases, and the minimal object required to submit work is a `cl::sycl::queue`. A `cl::sycl::queue` can be default constructed; in which it case will ask the SYCL runtime to pick a device for you based on what's available in your system. There are other ways to ask SYCL to select a specific device based on your needs which we will cover in a later tutorial, but for now this is all you need.

1. To create a queue simply default construct a `cl::sycl::queue` object:

```cpp
cl::sycl::queue myQueue;
```

## Creating a Command Group

In SYCL a task is represented by what's called a command group. A command group contains a SYCL kernel function which can be executed on a device and any data dependencies that kernel function has. A command is defined using a C++ function object (either a lambda function or a struct with a function call operator). The C++ function object must take a single parameter; a `cl::sycl::handler &`, which is used to link together data the SYCL kernel function and it's data depencies.

In this example we have provided the command group for you.


