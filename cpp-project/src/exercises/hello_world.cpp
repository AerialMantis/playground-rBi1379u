#include <iostream>
#include "CL/sycl.hpp"

int main (int argc, char *argv[]) {

  /* construct a queue called myQueue */

  myQueue.submit([&](cl::sycl::handler &cgh) {

    /* construct a stream object */

    cgh.single_task<class hello_world>([=]() {
       
       /* output "Hello World" to the console */
        
    });
  });
}
