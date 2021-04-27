import 'package:flutter/material.dart';
import 'package:trick_and_brain_riddles/constants.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, bottom: 50, left: 10),
      decoration: background_Decoration,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text('Riddle Game', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold),),
                    Text('Active Status', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),),
                  ],
                ),
              ],
            ),
            Column(
              children: drawerItems.map((element) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(element['icon'], size: 30, color: Colors.white,),
                    SizedBox(width: 10,),
                    Text(element['title'], style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold),)
                  ],
                ),
              )).toList(),
            ),
            Row(
              children: [
                Icon(Icons.settings, color: Colors.white,),
                SizedBox(width: 10,),
                Text('Settings', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold),),
                SizedBox( width: 15, height: 20, child: VerticalDivider(color: Colors.white,),),
                Text('Exit', style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
