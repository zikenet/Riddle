import 'package:flutter/material.dart';
import 'package:trick_and_brain_riddles/screens/drawer_screen.dart';
import 'package:trick_and_brain_riddles/screens/home_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen()
        ],
      ),
    );
  }
}
