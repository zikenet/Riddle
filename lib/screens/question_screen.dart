import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trick_and_brain_riddles/components/body.dart';
import 'package:trick_and_brain_riddles/components/question_controller.dart';

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: _controller.nextQuestion, child: Text('Skip'),),
        ],
      ),
      body: Body(),
    );
  }
}

