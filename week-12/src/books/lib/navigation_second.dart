import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
    const NavigationSecond({super.key});

    @override
    State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
    @override
    Widget build(BuildContext context){
        Color color;
        return Scaffold(
            appBar: AppBar(
                title: const Text('Navigation Second Screen Fikri'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        ElevatedButton(
                            child: const Text('Red'),
                            onPressed: () {
                                color = Colors.pink.shade400; // Warna merah
                                Navigator.pop(context, color);
                            }
                        ),
                        ElevatedButton(
                            child: const Text('Yellow'),
                            onPressed: () {
                                color = Colors.yellow.shade500; // Warna kuning
                                Navigator.pop(context, color);
                            }
                        ),
                        ElevatedButton(
                            child: const Text('Blue'),
                            onPressed: () {
                                color = Colors.blue.shade700; // Warna biru
                                Navigator.pop(context, color);
                            }
                        ),
                    ]
                )
            ),
        );
    }
}