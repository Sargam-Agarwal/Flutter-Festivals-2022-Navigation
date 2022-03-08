import 'package:demo_project/answer_screen.dart';
import 'package:demo_project/hint_screen.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guess the Character from Friends!"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Text(dataMap['question']!),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const HintScreen(),
                  settings: const RouteSettings(
                      arguments: "This is from Question screen"),
                ),
              );
            },
            child: const Text("Show hint"),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const AnswerScreen(),
                ),
              );
            },
            child: const Text("Show answer"),
          ),
        ],
      ),
    );
  }
}
