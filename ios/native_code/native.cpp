#include <stdint.h>
#include <opencv2/core.hpp>

using namespace cv;

extern "C" __attribute__((visibility("default"))) __attribute__((used))
char *get_string() {
    return "C++ Code from native.cpp";
}

extern "C" __attribute__((visibility("default"))) __attribute__((used))
char *get_opencv_version() {
    return CV_VERSION;
}
