import 'package:flutter/material.dart';
import 'package:trick_and_brain_riddles/components/button.dart';
import 'package:trick_and_brain_riddles/constants.dart';
import 'package:trick_and_brain_riddles/screens/question_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: isDrawerOpen ? drawerDecoration : drawer_Decoration,
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                isDrawerOpen
                    ? GestureDetector(child: Container(height: 40, width: 40, child: Button(icon: Icons.arrow_back_ios,)),
                        onTap: (){
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactor = 1;
                            isDrawerOpen = false;
                          });
                        },)

                    : GestureDetector(child: Container(height: 40, width: 40, child: Button(icon: Icons.menu,)),
                  onTap: (){
                    setState(() {
                      xOffset = 230;
                      yOffset = 160;
                      scaleFactor = 0.6;
                      isDrawerOpen = true;
                    });
                  },)
              ],
            ),
          ),
          Spacer(flex: 2,),
          Text(
            "Let's Play Riddle,",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            'Enter your information below',
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              counterStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: Color(0xFF1C2341),
              hintText: "Full Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30),
                ),
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionScreen()));
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.all(20 * 0.75),
              decoration: BoxDecoration(
                gradient: kPrimaryGradient,
                borderRadius: BorderRadius.all(Radius.circular(12),),
              ),
              child: Text(
                'Play',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Spacer(flex: 2,),
        ],
      ),
    );
  }
}
