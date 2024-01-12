import 'dart:math';

import 'package:flutter/material.dart';
import 'package:why_two_screen/detail/detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color _color = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
        actions: [
          IconButton(
            onPressed: () {
              // 다른 화면
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen(_color)),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            final random = Random();
            final red = random.nextInt(256);
            final green = random.nextInt(256);
            final blue = random.nextInt(256);

            final newColor = Color.fromARGB(255, red, green, blue);

            _color = newColor;
          });
        },
        child: Container(
          color: _color,
        ),
      ),
    );
  }
}
