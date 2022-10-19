cmake_minimum_required(VERSION 3.4.1)

set(OpenCV_STATIC ON)
set(OpenCV_DIR "./third_sdk/OpenCV-android-sdk/sdk/native/jni")
find_package(OpenCV REQUIRED)

add_library(libtensorflowlite_c SHARED IMPORTED)
set_target_properties(libtensorflowlite_c PROPERTIES IMPORTED_LOCATION "${CMAKE_SOURCE_DIR}/third_sdk/tflite/${ANDROID_ABI}/libtensorflowlite_c.so")

add_library( my_ffi_package
             SHARED
             ../ios/native_code/native.cpp )

target_include_directories(
        my_ffi_package PRIVATE
        ${CMAKE_SOURCE_DIR}/third_sdk/tflite/include)

find_library(
        log-lib
        log)

target_link_libraries( 
        my_ffi_package
        ${OpenCV_LIBS}
        libtensorflowlite_c
        ${log-lib})
