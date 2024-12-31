# Bottom Sheet Modal Package

A simple and customizable Flutter package for creating and displaying a `showModalBottomSheet` with customizable height and background color. This package provides a reusable widget, `BottomSheetExample`, which simplifies the use of `showModalBottomSheet` in your Flutter application.

## Features

- Easily create a modal bottom sheet with customizable height and background color.
- Expandable to include more customizations and features in future releases.
- Built using Flutter's `showModalBottomSheet` for seamless integration.

## Screenshot

![Alt text](https://i.imgur.com/QTtbRMb.png "Bottom Sheet Modal View")

## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  bottom_sheet_modal_package:
    git:
      url: https://github.com/RomanticNihilist/bottom_package_modal_package
```

Then, run the following command to fetch the package:

```bash
flutter pub get
```

## Usage

Import the package in your Dart file:

```dart
import 'package:flutter/material.dart';
import 'bottom_package_modal_package/bottom_package_modal_package.dart';
```

### Example

Below is a complete example of how to use the `BottomSheetExample` widget:

```dart

void main() => runApp(const BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet Sample')),
        body: const BottomSheetExample(
          color: Color.fromARGB(255, 126, 105, 18),
          height: 100,
        ),
      ),
    );
  }
}
```
### Here is the code of the BottomSheetExample widget, u don't have to write this code explicitly:
```dart
class BottomSheetExample extends StatelessWidget {
  final int height;
  final Color color;

  const BottomSheetExample({super.key, required this.color, required this.height});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            backgroundColor: color,
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: height.toDouble(),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Modal BottomSheet'),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
```

### Parameters

| Parameter | Type   | Description                        |
|-----------|--------|------------------------------------|
| `color`   | `Color`| Background color of the bottom sheet. |
| `height`  | `int`  | Height of the bottom sheet in pixels. |

## Customization

The `BottomSheetExample` widget currently supports the `height` and `color` parameters for customization. Additional properties and features can be added in future updates.

## Contributions

Contributions are welcome! If you encounter any issues or have suggestions for improvement, please don't ping me :).

## License

Heh heh.