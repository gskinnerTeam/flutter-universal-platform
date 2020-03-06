# Universal Platform - A Web-safe Platform class

With this plugin you can perform platform detection on all platforms including Web, without errors.

Currently, if you try and use dart.io.Platform class on Web, your build will throw the following error:
```
Unsupported operation: Platform._operatingSystem
```

## 🎮 Usage

This acts as a drop-in replacement for dart.io.Platform, with a different name for improved clarity. 

```dart
//This will explode on Web
bool isIos = Platform.isIOS;

//This will not :)
bool isIos = UniversalPlatform.isIOS;
bool isWeb = UniversalPlatform.isWeb;
```

## 🎖 Installation
```yaml
dependencies:
  sized_context: ^1.0.0
```

### ⚡ Import

```dart
import 'universal_platform.dart';
```

## 🐛 Bugs/Requests

If you encounter any problems feel open an issue. If you feel the library is missing a feature, please raise a ticket on Github and we'll look into it. Pull request are also welcome.

## ⭐ License

MIT License
