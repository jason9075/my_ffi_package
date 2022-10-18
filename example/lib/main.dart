import 'package:flutter/material.dart';

import 'package:my_ffi_package/native.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _nativeLib = NativeLib();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text(
            '${_nativeLib.getString()}\n'
            'OpenCV: ${_nativeLib.getOpenCvVersion()}\n'
          ),
        ),
      ),
    );
  }
}
