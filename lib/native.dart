import 'dart:ffi'; // For FFI
import 'dart:io'; // For Platform.isX

import 'package:ffi/ffi.dart';

final DynamicLibrary nativeLib = Platform.isAndroid
    ? DynamicLibrary.open('libmy_ffi_package.so')
    : DynamicLibrary.process();

typedef _c_get_string = Pointer<Utf8> Function();

typedef _dart_get_string = Pointer<Utf8> Function();

final _get_string =
    nativeLib.lookupFunction<_c_get_string, _dart_get_string>('get_string');

class NativeLib {

    String getString(){
        return _get_string().toDartString();
    }
}
