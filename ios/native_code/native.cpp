#include <stdint.h>

extern "C" __attribute__((visibility("default"))) __attribute__((used))
char *get_string() {
    return "C++ Code from native.cpp";
}
