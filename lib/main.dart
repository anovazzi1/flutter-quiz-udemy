import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';
void main() => (runApp(MaterialApp(home: MyApp())));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _questions = const [
    {
      'question': 'what\'s your favorite pet?',
      'answers': [['parrot',10], ['dog',5], ['cat',3]]
    },
    {
      'question': 'what\'s your favorite color?',
      'answers': [['blue',10], ['red',5], ['yellow',3]]
    },
    {
      'question': 'what\'s your favorite food?',
      'answers': [['meat',10], ['fish',5], ['chicken',3]]
    },
  ];

  var questionIndex = 0;
  var totalScore = 0;
  void restartQuiz()
  {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  void _answerQuestion(int score){
    if(questionIndex<_questions.length)
    setState(() {
      totalScore += score;
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("quiz app"),
      ),
      body: questionIndex<_questions.length? Quiz(_answerQuestion,_questions,questionIndex):
      Result(totalScore,restartQuiz),
    );
  }
}
