import 'package:flutter/material.dart';
import 'package:quizly/quiz.dart';
import 'package:quizly/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;

  int _questionID = 0;
  int _totalScor = 0;
  final List<Map<String, Object>> _questions = [
    {
      'questionText': "What's your Favourite Color ? ",
      'answersText': [
        {'title': "Red", 'score': 0},
        {'title': "Green", 'score': 0},
        {'title': "Blue", 'score': 0},
        {'title': "Black", 'score': 10},
      ],
    },
    {
      'questionText': "What's your Favourite Animal ? ",
      'answersText': [
        {'title': "Lion", 'score': 0},
        {'title': "Tiger", 'score': 10},
        {'title': "Elephant", 'score': 0},
        {'title': "Rabbit", 'score': 0},
      ],
    },
    {
      'questionText': "What's your Name ? ",
      'answersText': [
        {'title': "Mohammed", 'score': 0},
        {'title': "Ahmed", 'score': 10},
        {'title': "Mostafa", 'score': 0},
        {'title': "Hamada", 'score': 0},
        {'title': "Saif", 'score': 0},
      ],
    }
  ];

  void _startFromBeginning() {
    setState(() {
      _questionID = 0;
      _totalScor = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScor += score;
    setState(() {
      _questionID++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isSwitched == false
          ? ThemeData.light(
              useMaterial3: true,
            )
          : ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Quiz App"),
          ),
          actions: [
            Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                }),
          ],
          leading: isSwitched == false
              ? Icon(Icons.sunny, color:Colors.yellow.shade700 )
              :const Icon(Icons.dark_mode_outlined),
        ),
        body: _questionID < _questions.length
            ? Quiz(_questions, _questionID, answerQuestion)
            : Result(
                startFromBeginning: _startFromBeginning,
                myScore: _totalScor,
              ),
      ),
    );
  }
}
