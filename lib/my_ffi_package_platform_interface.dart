import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'my_ffi_package_method_channel.dart';

abstract class MyFfiPackagePlatform extends PlatformInterface {
  /// Constructs a MyFfiPackagePlatform.
  MyFfiPackagePlatform() : super(token: _token);

  static final Object _token = Object();

  static MyFfiPackagePlatform _instance = MethodChannelMyFfiPackage();

  /// The default instance of [MyFfiPackagePlatform] to use.
  ///
  /// Defaults to [MethodChannelMyFfiPackage].
  static MyFfiPackagePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MyFfiPackagePlatform] when
  /// they register themselves.
  static set instance(MyFfiPackagePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
