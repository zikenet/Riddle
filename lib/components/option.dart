import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:trick_and_brain_riddles/components/question_controller.dart';

class Option extends StatelessWidget {
  const Option({
    Key key, this.text, this.index, this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (qnController) {
        Color getTheRightColor(){
          if(qnController.isAnswered){
            if(index == qnController.correctAnt){
              return Colors.green;
            }else if (index == qnController.selectAns && qnController.selectAns != qnController.correctAnt){
              return Colors.red;
            }
          }
          return Colors.grey;
        }

        IconData getTheRightIcon(){
          return getTheRightColor() == Colors.red ? Icons.close : Icons.done;
        }
        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              border: Border.all(color: getTheRightColor()),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${index + 1} $text",
                  style: TextStyle(color: getTheRightColor(), fontSize: 16),
                ),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: getTheRightColor() == Colors.grey ? Colors.transparent : getTheRightColor(),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: getTheRightColor()),
                  ),
                  child: getTheRightColor() == Colors.grey ? null : Icon(getTheRightIcon(), size: 16,),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}