import 'package:flutter/material.dart';

class Result extends StatelessWidget {
final int _score;
final VoidCallback restart;

Result(this._score,this.restart);

String get resultPhrase
{
  String result="";
  if(_score>30)
    {
      result = "you are cool";
    }
  else if (_score<30 && _score>20)
    {
      result = "you are ok";
    }
  else
    {
      result = "you tried";
    }
  return result;
}


@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child:Text(resultPhrase)),
        FlatButton(onPressed: restart, child: Text("Restar quiz",style: TextStyle(color: Colors.blue),))
      ],
    );
  }
}
