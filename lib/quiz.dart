import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function _answerQuestion;
  final List<Map> questions;
  final int questionIndex;

  Quiz(this._answerQuestion,this.questions,this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question'] as String),
        ...(questions[questionIndex]['answers'] as List<List<Object>>).map((e){
          return Answer(()=>_answerQuestion(e[1]),e[0] as String);
        }).toList()
      ],
    );
  }
}
