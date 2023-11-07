import 'package:a1/screens/menu_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AOneApp());
}

class AOneApp extends StatelessWidget {
  const AOneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuScreen(),
    );
  }
}
