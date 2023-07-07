import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() startFromBeginning;

  const Result({super.key, required this.startFromBeginning});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "You Win !!",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
