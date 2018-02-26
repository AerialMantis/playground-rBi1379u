#include "CL/sycl.hpp"

int main () {
 
  cl::sycl::queue myQueue;

  myQueue.submit([&](cl::sycl::handler &cgh) {

    cl::sycl::stream os(1024, 128);

    cgh.single_task<class kernel>([=]() {
       
       os << "Hello from SYCL!";
        
    });
 
  });
}
