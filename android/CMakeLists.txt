cmake_minimum_required(VERSION 3.4.1)

set(OpenCV_STATIC ON)
set(OpenCV_DIR "./third_sdk/OpenCV-android-sdk/sdk/native/jni")
find_package(OpenCV REQUIRED)

add_library( my_ffi_package
             SHARED
             ../ios/native_code/native.cpp )

find_library(
        log-lib
        log)

target_link_libraries( 
        my_ffi_package
        ${OpenCV_LIBS}
        ${log-lib})
