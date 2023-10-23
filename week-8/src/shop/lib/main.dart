import 'package:flutter/material.dart';
import 'package:shop/pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(MaterialApp(
        routes: {
      '/': (context) => HomePage(), // Route untuk MainApp
    },
    initialRoute: '/', // Menunjuk ke route pertama
  ));
}   

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: const Text('Shopping List'),
      )),
    );
  }
}