import 'package:flutter/material.dart';
import 'package:new_challenge/models/question_list.dart';

class QuestionService with ChangeNotifier {
  QuestionList currentQuestion = QuestionList();
  List<QuestionList> result = [];
  void setQuestion() {
    currentQuestion = QuestionList();
    notifyListeners();
  }

  void setAnswer(int questionIndex, int answerIndex) {
    currentQuestion.questions[questionIndex].selectedAnsers = answerIndex;
    notifyListeners();
  }
}
