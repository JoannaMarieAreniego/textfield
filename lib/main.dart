import 'package:flutter/material.dart';
import 'package:flutter_application_2/SCREENS/home.dart';

void main() {
  runApp(flutterEx());
}

class flutterEx extends StatelessWidget {
  const flutterEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}
