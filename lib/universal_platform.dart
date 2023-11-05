library universal_platform;
import 'src/universal_platform_locator.dart' if(dart.library.io) 'src/platform_io.dart';

export 'src/universal_platform_locator.dart' if(dart.library.io) 'src/platform_io.dart';

abstract class UniversalPlatform {

  static const tvMode = String.fromEnvironment('TV_MODE');

  static UniversalPlatformType get value => currentUniversalPlatform;

  static bool get isWeb => currentUniversalPlatform == UniversalPlatformType.Web;
  static bool get isMacOS => currentUniversalPlatform == UniversalPlatformType.MacOS;
  static bool get isWindows => currentUniversalPlatform == UniversalPlatformType.Windows;
  static bool get isLinux => currentUniversalPlatform == UniversalPlatformType.Linux;
  static bool get isAndroid => currentUniversalPlatform == UniversalPlatformType.Android
                            || currentUniversalPlatform == UniversalPlatformType.AndroidTv;
  static bool get isIOS => currentUniversalPlatform == UniversalPlatformType.IOS
                            || currentUniversalPlatform == UniversalPlatformType.TvOS;
  static bool get isFuchsia => currentUniversalPlatform == UniversalPlatformType.Fuchsia;
  static bool get isAndroidTv => currentUniversalPlatform == UniversalPlatformType.AndroidTv;
  static bool get isTvOS => currentUniversalPlatform == UniversalPlatformType.TvOS;
  
  static bool get isTv => tvMode == 'ON';
  static bool get isMobile => (UniversalPlatform.isIOS || UniversalPlatform.isAndroid) && !isTv;
  static bool get isDesktop => isLinux || isMacOS || isWindows;
  static bool get isDesktopOrWeb => UniversalPlatform.isDesktop || UniversalPlatform.isWeb;

  static bool get isApple => UniversalPlatform.isIOS || UniversalPlatform.isMacOS || UniversalPlatform.isTvOS;

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
      case UniversalPlatformType.AndroidTv:
        return "androidtv";
      case UniversalPlatformType.TvOS:
        return "tvos";
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
  IOS,
  AndroidTv,
  TvOS,
}
