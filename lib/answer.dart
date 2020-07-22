import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answermove;
  final String answerText;
  Answer(this.answermove, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: answermove,
        color: Colors.green[500],
      ),
    );
  }
}
