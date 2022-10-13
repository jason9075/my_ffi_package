cmake_minimum_required(VERSION 3.4.1)

add_library( my_ffi_package
             SHARED
             ../ios/native_code/native.cpp )
