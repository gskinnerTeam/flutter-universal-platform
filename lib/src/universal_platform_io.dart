import 'dart:io' show Platform;

import 'universal_platform_type.dart';

abstract class UniversalPlatform {
  static UniversalPlatformType get value {
    UniversalPlatformType result;
    if (Platform.isAndroid) {
      result = UniversalPlatformType.Android;
    } else if (Platform.isIOS) {
      result = UniversalPlatformType.IOS;
    } else if (Platform.isFuchsia) {
      result = UniversalPlatformType.Fuchsia;
    } else if (Platform.isLinux) {
      result = UniversalPlatformType.Linux;
    } else if (Platform.isMacOS) {
      result = UniversalPlatformType.MacOS;
    } else if (Platform.isWindows) {
      result = UniversalPlatformType.Windows;
    } else {
      result = UniversalPlatformType.Other;
    }
    return result;
  }

  static bool get isAndroid => Platform.isAndroid;
  static bool get isFuchsia => Platform.isFuchsia;
  static bool get isIOS => Platform.isIOS;
  static bool get isLinux => Platform.isLinux;
  static bool get isMacOS => Platform.isMacOS;
  static bool get isWindows => Platform.isWindows;
  static bool get isOther =>
      UniversalPlatform.value == UniversalPlatformType.Other;

  static const bool isWeb = false;
  static const bool isNone = false;

  static bool get isDesktop => isLinux || isMacOS || isWindows;
  static bool get isDesktopOrWeb => isDesktop || isWeb;
}
