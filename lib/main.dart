import 'package:flutter/material.dart';
import 'package:quizly/questions.dart';
void main ()=> runApp(MyApp());
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionID=1;
  final _questions= [
    "What's your Favourite Color ? ",
    "What's your Favourite Animal ? ",
    "What's your Name ? ",

  ];
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
              Questions(_questions[_questionID]),
            ],
          ),
        ),
      );
  }
}
