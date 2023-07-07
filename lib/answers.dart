import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
 final  String answerText ;
  final Function onAnswer;
  const  Answers(this.answerText, {super.key, required this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerText,
          style: const TextStyle(fontSize: 25),
        ),
        onPressed: ()=> onAnswer(),
      ),
    );
  }
}
