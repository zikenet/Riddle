import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trick_and_brain_riddles/components/question_controller.dart';
import 'package:trick_and_brain_riddles/constants.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: drawer_Decoration,
          ),
          Column(
            children: [
              Spacer(flex: 3,),
              Text(
                "Score",
                style: Theme.of(context)
                .textTheme
                .headline3
                .copyWith(color: Colors.white, fontFamily: "Pacifico"),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAnt * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white, fontFamily: "Pacifico"),
              ),
              Spacer(flex: 3,),
            ],
          ),
        ],
      ),
    );
  }
}
