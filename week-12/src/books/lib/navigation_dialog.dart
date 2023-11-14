import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen'),
      ),
      body: Center(
        child:
            ElevatedButton(child: const Text('Change Color'), onPressed: () {_showColorDialog(context);}),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very Important Question'),
          content: const Text('Please choose a Color'),
          actions: <Widget>[
            TextButton(
                child: const Text('Purple'),
                onPressed: () {
                  color = const Color.fromARGB(255, 135, 91, 246);
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Green'),
                onPressed: () {
                  color = const Color.fromARGB(255, 106, 229, 112);
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Yellow'),
                onPressed: () {
                  color = const Color.fromARGB(255, 236, 230, 43);
                  Navigator.pop(context, color);
                }),
          ],
        );
      },
    );
    setState(() {});
  }
}
