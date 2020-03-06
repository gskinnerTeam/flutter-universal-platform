import '../universal_platform.dart';

//Default to web, the platform_io class will override this if it gets imported.
UniversalPlatformType get currentUniversalPlatform => UniversalPlatformType.Web;
