import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/date_picker_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contoh Date Picker',
      home: MyHomePage(title: 'Contoh Date Picker Izamul Ganteng'),
    );
  }
}