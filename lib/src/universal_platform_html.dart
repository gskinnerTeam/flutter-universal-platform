import 'universal_platform_type.dart';

abstract class UniversalPlatform {
  static UniversalPlatformType get value => UniversalPlatformType.Web;

  static bool get isAndroid => false;
  static bool get isFuchsia => false;
  static bool get isIOS => false;
  static bool get isLinux => false;
  static bool get isMacOS => false;
  static bool get isWindows => false;
  static bool get isOther => false;

  static const bool isWeb = true;
  static const bool isNone = false;

  static bool get isDesktop => isLinux || isMacOS || isWindows;
  static bool get isDesktopOrWeb => isDesktop || isWeb;
}
