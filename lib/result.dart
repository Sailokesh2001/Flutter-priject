import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restart;
  Result(this.restart);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Congratulations you finished!!',
          style: TextStyle(
            fontSize: 50,
            color: Colors.green[300],
          ),
          textAlign: TextAlign.center,
        ),
        RaisedButton(
          child: Text(
            'Restart',
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: restart,
          color: Colors.green[500],
        ),
      ],
    );
  }
}
