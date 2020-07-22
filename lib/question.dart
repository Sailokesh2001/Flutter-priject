import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questions;

  Question(this.questions);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questions,
        style: TextStyle(
          color: Colors.green[400],
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
