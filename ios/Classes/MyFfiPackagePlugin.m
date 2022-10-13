#import "MyFfiPackagePlugin.h"
#if __has_include(<my_ffi_package/my_ffi_package-Swift.h>)
#import <my_ffi_package/my_ffi_package-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "my_ffi_package-Swift.h"
#endif

@implementation MyFfiPackagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMyFfiPackagePlugin registerWithRegistrar:registrar];
}
@end
