library universal_platform;
import 'src/universal_platform_locator.dart' if(dart.library.io) 'src/platform_io.dart';

abstract class UniversalPlatform {

  static bool get isWeb => currentUniversalPlatform == UniversalPlatformType.Web;
  static bool get isMacOS => currentUniversalPlatform == UniversalPlatformType.MacOS;
  static bool get isWindows => currentUniversalPlatform == UniversalPlatformType.Windows;
  static bool get isLinux => currentUniversalPlatform == UniversalPlatformType.Linux;
  static bool get isAndroid => currentUniversalPlatform == UniversalPlatformType.Android;
  static bool get isIOS => currentUniversalPlatform == UniversalPlatformType.IOS;
  static bool get isFuchsia => currentUniversalPlatform == UniversalPlatformType.Fuchsia;

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