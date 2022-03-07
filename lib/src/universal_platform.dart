import 'universal_platform_none.dart'
    if (dart.library.io) 'universal_platform_io.dart'
    if (dart.library.html) 'universal_platform_html.dart';
import 'universal_platform_type.dart';

export 'universal_platform_none.dart'
    if (dart.library.io) 'universal_platform_io.dart'
    if (dart.library.html) 'universal_platform_html.dart';

UniversalPlatformType get currentUniversalPlatform => UniversalPlatform.value;
