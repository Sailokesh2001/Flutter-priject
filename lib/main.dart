import 'package:flutter/material.dart';
import 'package:flutter_demo_my/answer.dart';
import 'package:flutter_demo_my/question.dart';
import 'package:flutter_demo_my/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'q': 'what\'s your age',
      'a': [
        '<18',
        '18',
        '>18',
      ],
    },
    {
      'q': 'what\'s your height',
      'a': [
        '<182cm',
        '182cm',
        '>182cm',
      ],
    },
    {
      'q': 'what\'s your name starting letter',
      'a': ['ABCDEFGH', 'IJKLMNOP', 'QRSTUVWXYZ'],
    },
    {
      'q': 'what\'s your favorite color?',
      'a': ['Black', 'Red', 'Blue', 'Green'],
    },
    {
      'q': 'what\'s your favorite animal',
      'a': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'q': 'what\'s your age',
      'a': ['13<', '13>', '18', '18<', '18>'],
    },
    {
      'q': 'what\'s your genger',
      'a': ['Male', 'Female', 'None'],
    },
    {
      'q': 'Who\'s you role model',
      'a': ['bill gates', 'Mark Zuckerberg', 'Jack Dorsey', 'Larry Page']
    }
  ];
  int questionNum = 0;

  void answermove() {
    setState(() {
      questionNum = questionNum + 1;
    });
    print('hello');
  }

  void restart() {
    setState(() {
      questionNum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My project'),
          backgroundColor: Colors.green[700],
        ),
        body: questionNum < questions.length
            ? Column(
                children: <Widget>[
                  Question(
                    questions[questionNum]['q'],
                  ),
                  ...(questions[questionNum]['a'] as List<String>)
                      .map((answer) {
                    return Answer(answermove, answer);
                  }).toList()
                ],
              )
            : Result(restart),
        backgroundColor: Colors.green[100],
      ),
    );
  }
}
