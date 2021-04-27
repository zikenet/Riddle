
class PageModel{

  final int id;
  final String text;

  PageModel({this.id, this.text});

  static List<PageModel> list = [
    PageModel(
      id: 1,
      text: 'Riddle is a Trick and Brain Riddles question game. \nWhich consists trick questions.'
    ),
    PageModel(
      id: 2,
      text: 'Riddle is a Trick and Brain Riddles question game. \nWhich consists trick questions.'
    ),
    PageModel(
      id: 3,
      text: 'Riddle is a Trick and Brain Riddles question game. \nWhich consists trick questions.'
    ),
  ];
}