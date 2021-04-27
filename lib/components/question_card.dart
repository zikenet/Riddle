import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trick_and_brain_riddles/components/option.dart';
import 'package:trick_and_brain_riddles/components/question_controller.dart';
import 'package:trick_and_brain_riddles/components/questions.dart';

class QuestionsCard extends StatelessWidget {
  const QuestionsCard({
    Key key,
    @required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              question.question,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.black, fontFamily: "SourceSans"),
            ),
           ...List.generate(question.options.length, (index) => Option(
             index: index,
             text: question.options[index],
             press: () => _controller.checkAns(question, index),
           ),
           ),
          ],
        ),
      ),
    );
  }
}