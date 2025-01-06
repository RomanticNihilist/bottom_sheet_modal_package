import 'package:flutter/material.dart';

void main() => runApp(const BottomSheetApp());

class FileItem {
  final String name;
  final String icon;
  final bool isFolder;
  final bool isStarred;

  FileItem({required this.name, required this.icon, required this.isFolder, required this.isStarred});
}

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet Sample')),
        body: BottomSheetExample(
          color: Color.fromARGB(255, 126, 105, 18),
          height: 100,
          bottomSheetModalWidget: Center(
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
        ),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  final int height;
  final Color color;
  final Widget bottomSheetModalWidget;
  final Function(dynamic)? onFilesAdded;

  const BottomSheetExample({
    super.key,
    this.onFilesAdded,
    required this.color,
    required this.height,
    required this.bottomSheetModalWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            backgroundColor:color,
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: height.toDouble(),
                //color: Colors.amber,
                child: bottomSheetModalWidget
              );
            },
          );
        },
      ),
    );
  }
}