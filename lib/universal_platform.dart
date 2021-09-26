library universal_platform;
import 'src/universal_platform_locator.dart' if(dart.library.io) 'src/platform_io.dart';

abstract class UniversalPlatform {

  static UniversalPlatformType get value => currentUniversalPlatform;

  static bool get isWeb => currentUniversalPlatform == UniversalPlatformType.Web;
  static bool get isMacOS => currentUniversalPlatform == UniversalPlatformType.MacOS;
  static bool get isWindows => currentUniversalPlatform == UniversalPlatformType.Windows;
  static bool get isLinux => currentUniversalPlatform == UniversalPlatformType.Linux;
  static bool get isAndroid => currentUniversalPlatform == UniversalPlatformType.Android;
  static bool get isIOS => currentUniversalPlatform == UniversalPlatformType.IOS;
  static bool get isFuchsia => currentUniversalPlatform == UniversalPlatformType.Fuchsia;

  static String get operatingSystem {
    switch (value) {
      case UniversalPlatformType.Web:
        return "web";
      case UniversalPlatformType.MacOS:
        return "macos";
      case UniversalPlatformType.Windows:
        return "windows";
      case UniversalPlatformType.Linux:
        return "linux";
      case UniversalPlatformType.Android:
        return "android";
      case UniversalPlatformType.IOS:
        return "ios";
      case UniversalPlatformType.Fuchsia:
        return "fuchsia";
    }
  }

}

enum UniversalPlatformType {
  Web,
  Windows,
  Linux,
  MacOS,
  Android,
  Fuchsia,
  IOS
}