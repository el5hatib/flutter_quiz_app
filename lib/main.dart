import 'package:flutter/material.dart';
import 'package:quizly/answers.dart';
import 'package:quizly/questions.dart';
void main ()=> runApp(MyApp());
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionID=0;
  final _questions= [
    {
      'questionText':"What's your Favourite Color ? ",
      'answersText': ["Red","Green","Blue","Black"],
    } ,
    {
      'questionText': "What's your Favourite Animal ? ",
      'answersText': ["Lion","Tiger","Elephant","Rabbit"],
    },
    {
      'questionText': "What's your Name ? ",
      'answersText': ["Mohammed","Ahmed","Mostafa","Hamada","Saif"],
    }

  ];
  void answerQuestion ()
  {
    if (_questionID==2)
      {
         _questionID=-1;
      }
    setState(() {
      _questionID++;
    });
    print ("Answer Chosen !!");
    print (_questionID);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center (
            child: Text("Quize App"),
          ),
        ),
        body: Column(
            children: [
              Questions(_questions[_questionID]['questionText'].toString(),),
              ...(_questions[_questionID]['answersText'] as List<String> ).map((answer)
              {
                return Answers(answer,onAnswer:answerQuestion);
              }).toList(),
            ],
          ),
        ),
      );
  }
}
