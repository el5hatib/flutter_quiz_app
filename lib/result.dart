import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() startFromBeginning;
  final int myScore;

  const Result(
      {super.key, required this.startFromBeginning, required this.myScore});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: myScore >= 20
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Great You Win !!",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen),
                ),
                Text(
                  '$myScore',
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen),
                ),
                TextButton(
                  onPressed: () => startFromBeginning(),
                  child: const Text(
                    "Start From Beginning",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "So Bad You Loos !!",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  'You Get : $myScore',
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                TextButton(
                  onPressed: () => startFromBeginning(),
                  child: const Text(
                    "Start From Beginning",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
