import 'package:flutter/material.dart';
import 'package:trick_and_brain_riddles/screens/flashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riddle',
      home: FlashScreen(),
    );
  }
}
