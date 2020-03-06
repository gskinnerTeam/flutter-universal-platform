import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

void main() => runApp(MaterialApp(home: Demo()));

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(window.physicalSize);

    return Material(
      child: Center(
          child: Text(
        "Web: ${UniversalPlatform.isWeb} \n "
        "MacOS: ${UniversalPlatform.isMacOS} \n"
        "Windows: ${UniversalPlatform.isWindows} \n"
        "Linux: ${UniversalPlatform.isLinux} \n"
        "Android: ${UniversalPlatform.isAndroid} \n"
        "IOS: ${UniversalPlatform.isIOS} \n"
        "Fuschia: ${UniversalPlatform.isFuchsia} \n",
      )),
    );
  }
}
