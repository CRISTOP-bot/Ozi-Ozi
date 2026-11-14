#include <cstdio>

__global__ void say_ozi() {
    printf("Ozi Ozi\n");
}

int main() {
    say_ozi<<<1, 1>>>();
    cudaDeviceSynchronize();
    return 0;
}
