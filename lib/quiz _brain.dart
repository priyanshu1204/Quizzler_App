import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        q: 'Nepal is the only country in the world without a rectangular flag.',
        a: true),
    Question(
        q: 'wheat is the most widely cultivated and consumed crop on the planet. ',
        a: false),
    Question(q: 'The Atlantic Ocean is the world’s biggest ocean. ', a: false),
    Question(q: 'A slug\'s blood is green', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished(){
    if(_questionNumber >= _questionBank.length -1) {
      print('Now returning true');
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    _questionNumber =0;
  }
}
