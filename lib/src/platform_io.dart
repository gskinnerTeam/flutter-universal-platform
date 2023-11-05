import 'dart:io';
import '../universal_platform.dart';

//Override default method, to provide .io access
UniversalPlatformType get currentUniversalPlatform {
  if (UniversalPlatform.isTv && Platform.isAndroid) return UniversalPlatformType.AndroidTv;
  if (UniversalPlatform.isTv && Platform.isIOS) return UniversalPlatformType.TvOS;
  if (Platform.isWindows) return UniversalPlatformType.Windows;
  if (Platform.isFuchsia) return UniversalPlatformType.Fuchsia;
  if (Platform.isMacOS) return UniversalPlatformType.MacOS;
  if (Platform.isLinux) return UniversalPlatformType.Linux;
  if (Platform.isIOS) return UniversalPlatformType.IOS;
  return UniversalPlatformType.Android;
}
