import 'package:flutter/material.dart';
import 'package:quizly/questions.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;

  final int questionID;
  final Function(int score) answerQuestion;

  const Quiz(this.questions, this.questionID, this.answerQuestion, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionID]['questionText'].toString(),
        ),
        ...(questions[questionID]['answersText'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(answer['title'].toString(),
              onAnswer: ()=>answerQuestion(int.parse(answer['score'].toString())));
        }).toList(),
      ],
    );
  }
}
