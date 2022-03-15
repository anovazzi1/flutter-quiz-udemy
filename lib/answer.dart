import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerHandler;
  final String answer;

  Answer(@required this.answerHandler, @required this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(answer),
        onPressed: answerHandler,
        color: Colors.blue,
        textColor: Colors.white,
      ),
      width: double.infinity,
    );
  }
}
