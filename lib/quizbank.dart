import 'package:quizzler/main.dart';

import 'questions.dart';

class Quizbank{
  int _questionstracker=0;

  List<Questions> _questionbank=[
    Questions('You can lead a cow downstairs but not upstairs.', false),
    Questions('Approximately one quarter of the human bones are in the feet.',true),
    Questions('A slug\'s blood is green.', true),
    Questions('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Questions('It is illegal to pee in the Ocean in Portugal.', true),
    Questions(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Questions(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Questions(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Questions(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Questions('Google was originally called \"Backrub\".', true),
    Questions(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Questions(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion(){
    if(_questionstracker<_questionbank.length-1){
      _questionstracker++;
    }
  }

  String getquestiontext(){
    return _questionbank[_questionstracker].questiontext;
  }

  bool getquestionanswer(){
    return _questionbank[_questionstracker].questionanswer;
  }

  bool isFinished() {
    if (_questionstracker >= _questionbank.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionstracker = 0;
  }
}