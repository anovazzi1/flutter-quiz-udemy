import 'package:flutter/material.dart';
import 'package:flutter_quiz_udemy/question.dart';
import './answer.dart';
void main() => (runApp(MaterialApp(home: MyApp())));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  Widget build(BuildContext context) {
    var questionIndex = 0;
    const questions = [
      {
        'question': 'what\'s your favorite pet?',
        'answers': ['parrot', 'dog', 'cat']
      },
      {
        'question': 'what\'s your favorite color?',
        'answers': ['blue', 'red', 'yellow']
      },
      {
        'question': 'what\'s your favorite food?',
        'answers': ['meat', 'fish', 'chicken']
      },
    ];
    void _answerQuestion(){
      setState(() {
        questionIndex++;
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("quiz app"),
      ),
      body: Column(
        children: [
          Question(questions[questionIndex]['question'] as String),
          ...(questions[questionIndex]['answers'] as List<String>).map((e){
            return Answer(_answerQuestion,e);
          }).toList()
        ],
      ),
    );
  }
}
