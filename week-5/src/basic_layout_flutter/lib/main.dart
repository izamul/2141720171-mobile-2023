import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidgetApp());
}

class MyWidgetApp extends StatelessWidget {
  const MyWidgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Widget App'),
        ),
        body: Column(
          children: [
            Text('CrossAxisAlignment.start: MainAxisAlignment.spaceAround:'),
            MyWidget(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            SizedBox(height: 20),
            Text('CrossAxisAlignment.end: MainAxisAlignment.spaceAround:'),
            MyWidget(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
            ),
            SizedBox(height: 20),
            Text('CrossAxisAlignment.center: MainAxisAlignment.spaceAround:'),
            MyWidget(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  MyWidget({
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlueBox(width: 50),
        BlueBox(width: 100),
        BlueBox(width: 75),
        RedBox(),
      ],
    );
  }
}

class RedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(),
      ),
    );
  }
}


class BlueBox extends StatelessWidget {
  final double width;

  BlueBox({required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
