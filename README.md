# README

## Flutter Botton Custom

A simple and customizable button widget for Flutter apps, ready to be used in your projects. This button comes with a beautiful gradient and rounded corners, perfect for modern applications.

### Installation

To use this package, add `botton_custom` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  flutter:
    sdk: flutter
  botton_custom: ^1.0.0
````

Usage
Import the package in your Flutter project:

```Dart
import 'package:botton_custom/botton_custom.dart';
````

Then, use the BottonCustom widget in your app:

```Dart
BottonCustom(
  textButton: "Click Me!",
  funcOnTap: () {
    print("Button tapped!");
  },
),
```

Customization

You can customize the button by changing its properties, such as textButton (the text displayed on the button) and funcOnTap (the function that will be executed when the button is tapped).

