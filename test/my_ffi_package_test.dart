import 'package:flutter_test/flutter_test.dart';
import 'package:my_ffi_package/my_ffi_package.dart';
import 'package:my_ffi_package/my_ffi_package_platform_interface.dart';
import 'package:my_ffi_package/my_ffi_package_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMyFfiPackagePlatform
    with MockPlatformInterfaceMixin
    implements MyFfiPackagePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MyFfiPackagePlatform initialPlatform = MyFfiPackagePlatform.instance;

  test('$MethodChannelMyFfiPackage is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMyFfiPackage>());
  });

  test('getPlatformVersion', () async {
    MyFfiPackage myFfiPackagePlugin = MyFfiPackage();
    MockMyFfiPackagePlatform fakePlatform = MockMyFfiPackagePlatform();
    MyFfiPackagePlatform.instance = fakePlatform;

    expect(await myFfiPackagePlugin.getPlatformVersion(), '42');
  });
}
