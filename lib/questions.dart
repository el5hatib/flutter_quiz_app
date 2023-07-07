import 'package:flutter/material.dart';
class Questions extends StatelessWidget {
  String questionText ;
   Questions(this.questionText, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text( questionText,
        style: const TextStyle(fontSize: 30),
        textAlign: TextAlign.center,

      ),
    );
  }
}
