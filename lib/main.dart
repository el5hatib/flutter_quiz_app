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
  int _questionID = 0;
  final List<Map<String, Object>> _questions = [
    {
      'questionText': "What's your Favourite Color ? ",
      'answersText': ["Red", "Green", "Blue", "Black"],
    },
    {
      'questionText': "What's your Favourite Animal ? ",
      'answersText': ["Lion", "Tiger", "Elephant", "Rabbit"],
    },
    {
      'questionText': "What's your Name ? ",
      'answersText': ["Mohammed", "Ahmed", "Mostafa", "Hamada", "Saif"],
    }
  ];
  void _startFromBeginning()
  {
    setState(() {
      _questionID = 0;
    });

  }
  void answerQuestion() {
    setState(() {
      _questionID++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Quize App"),
          ),
        ),
        body: _questionID < _questions.length
            ?  Quiz(_questions,_questionID,answerQuestion)
            :  Result(startFromBeginning: _startFromBeginning,),
              ),
      );
  }
}
