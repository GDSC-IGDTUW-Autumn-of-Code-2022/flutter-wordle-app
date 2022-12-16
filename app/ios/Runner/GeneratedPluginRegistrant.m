//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_statusbarcolor_ns/FlutterStatusbarcolorPlugin.h>)
#import <flutter_statusbarcolor_ns/FlutterStatusbarcolorPlugin.h>
#else
@import flutter_statusbarcolor_ns;
#endif

#if __has_include(<shared_preferences_ios/FLTSharedPreferencesPlugin.h>)
#import <shared_preferences_ios/FLTSharedPreferencesPlugin.h>
#else
@import shared_preferences_ios;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterStatusbarcolorPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterStatusbarcolorPlugin"]];
  [FLTSharedPreferencesPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTSharedPreferencesPlugin"]];
}

@end
