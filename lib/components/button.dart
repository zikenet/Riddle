import 'package:flutter/material.dart';
import 'package:trick_and_brain_riddles/constants.dart';

class Button extends StatelessWidget {
  final IconData icon;

  const Button({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5, 20),
            spreadRadius: 3,
            blurRadius: 10,
          ),
          BoxShadow(
            color: primaryColor,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: darkPrimaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(child: Icon(icon, color: Colors.white, size: 15,)),
            ),
          ),
        ],
      ),
    );
  }
}
