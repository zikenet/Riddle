import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryColor = Color(0xff243b55);
Color darkPrimaryColor = Color(0xff141e30);
const kPrimaryGradient = LinearGradient(
    colors: [
      Color(0xFF46A0AE),
      Color(0xFF00FFCB)
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight
);

const backgroundDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/background.jpg'),
    fit: BoxFit.fill
  ),
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(20, 30, 48, 1),
      Color.fromRGBO(36, 59, 85, 1),
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  ),
);

const background_Decoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(20, 30, 48, 1),
      Color.fromRGBO(36, 59, 85, 1),
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  ),
);

const drawer_Decoration = BoxDecoration(
  image: DecorationImage(
      image: AssetImage("assets/images/background.jpg"),
      fit: BoxFit.fill
  ),
  // gradient: LinearGradient(
  //   colors: [
  //     Color.fromRGBO(43, 88, 118, 1),
  //     Color.fromRGBO(78, 67, 118, 1),
  //   ],
  //   begin: Alignment.topCenter,
  //   end: Alignment.bottomCenter,
  // ),
);

final drawerDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/images/background.jpg"),
    fit: BoxFit.fill
  ),
   borderRadius: BorderRadius.circular(40),
  // gradient: LinearGradient(
  //   colors: [
  //     Color.fromRGBO(43, 88, 118, 1),
  //     Color.fromRGBO(78, 67, 118, 1),
  //   ],
  //   begin: Alignment.topCenter,
  //   end: Alignment.bottomCenter,
  // ),
);


List<Map> drawerItems = [
  {
    'icon': FontAwesomeIcons.home,
    'title': 'Home'
  },
  {
    'icon': Icons.score,
    'title': 'Scores'
  },
  {
    'icon': FontAwesomeIcons.info,
    'title': 'About Us'
  }
];