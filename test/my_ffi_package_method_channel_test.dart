import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_ffi_package/my_ffi_package_method_channel.dart';

void main() {
  MethodChannelMyFfiPackage platform = MethodChannelMyFfiPackage();
  const MethodChannel channel = MethodChannel('my_ffi_package');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
