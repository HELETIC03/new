import 'package:flutter/material.dart';
import 'package:kittinun/intro.dart';

void main() {
  runApp(const MyGame());
}

class MyGame extends StatelessWidget {
  const MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroScreen(),
    );
  }
}
