class Question{
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.answer, this.question, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "I speak without a mouth and hear without ears. I have no body, but I come alive with wind. What am I? ",
    "options": ['Sound', 'Echo', 'Air', 'Voice'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "You measure my life in hours and I serve you by expiring. I’m quick when I’m thin and slow when I’m fat. The wind is my enemy",
    "options": ['Fire', 'Water', 'Light', 'Candle'],
    "answer_index": 3
  },
  {
    "id": 3,
    "question": "I have cities, but no houses. I have mountains, but no trees. I have water, but no fish. What am I?",
    "options": ['Place', 'Desert', 'Map', 'Swimming Pool'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What is seen in the middle of March and April that can’t be seen at the beginning or end of either month?",
    "options": ['R', 'Starts', 'Sun', 'Nothing'],
    "answer_index": 0,
  },
];