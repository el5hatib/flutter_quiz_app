import 'package:flutter/material.dart';
class Questions extends StatelessWidget {
 final String questionText ;
  const Questions(this.questionText, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text( questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,

      ),
    );
  }
}
