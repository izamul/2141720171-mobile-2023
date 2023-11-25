import 'package:flutter/material.dart';
import 'random_screen.dart'; // Ganti dengan nama file yang benar

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Fikri',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const RandomScreen(),
    );
  }
}
