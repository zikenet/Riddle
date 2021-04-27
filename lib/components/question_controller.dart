import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trick_and_brain_riddles/components/questions.dart';
import 'package:trick_and_brain_riddles/screens/score_screen.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController _animationController;
  Animation _animation;
  Animation get animation => this._animation;

  PageController _pageController;
  PageController  get pageController => this._pageController;

  List<Question> _question = sample_data
      .map(
        (question) => Question(
          id: question['id'],
          question: question['question'],
          options: question['options'],
          answer: question['answer_index']
        ),
      )
      .toList();

  List<Question> get questions => this._question;
  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _correctAns;
  int get correctAnt => this._correctAns;

  int _selectedAns;
  int get selectAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numofCorrectAns = 0;
  int get numOfCorrectAns => this._numofCorrectAns;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();

    super.onInit();
  }


  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex){
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if(_correctAns == _selectedAns) _numofCorrectAns++;

    _animationController.stop();
    update();

    Future.delayed(Duration(seconds: 3), (){
      nextQuestion();
    });
  }

  void nextQuestion(){
    if(_questionNumber.value != _question.length){
      _isAnswered = false;
      _pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease);

      _animationController.reset();
      _animationController.forward().whenComplete(nextQuestion);
    }

    Get.to(ScoreScreen());
  }

  void updateTheQnNum(int index){
    _questionNumber.value = index;
  }
}
