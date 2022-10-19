#include <stdint.h>
#include <opencv2/core.hpp>

#ifdef __ANDROID__
#include "tensorflow/lite/c/common.h"
#include "tensorflow/lite/c/c_api.h"
#else
#include "TensorFlowLiteC/common.h"
#include "TensorFlowLiteC/c_api.h"
#endif

#define ATTRIBUTES extern "C" __attribute__((visibility("default"))) __attribute__((used))

using namespace cv;

ATTRIBUTES char *get_string() {
    return "C++ Code from native.cpp";
}

ATTRIBUTES char *get_opencv_version() {
    return CV_VERSION;
}

ATTRIBUTES const char *get_tflite_version() {
    return TfLiteVersion();
}
