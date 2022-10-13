import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_ffi_package_platform_interface.dart';

/// An implementation of [MyFfiPackagePlatform] that uses method channels.
class MethodChannelMyFfiPackage extends MyFfiPackagePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_ffi_package');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
