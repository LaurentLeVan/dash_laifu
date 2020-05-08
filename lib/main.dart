import 'package:dashlaifu/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DashLaifu());
}

class DashLaifu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      //TODO: Implement routes.
    );
  }
}
