
import 'my_ffi_package_platform_interface.dart';

class MyFfiPackage {
  Future<String?> getPlatformVersion() {
    return MyFfiPackagePlatform.instance.getPlatformVersion();
  }
}
