import 'package:demo_project/data.dart';
import 'package:flutter/material.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Here is the answer!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Image.asset(
              dataMap['answerImage1']!,
              height: 500,
              width: 500,
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              dataMap['answerImage2']!,
              height: 500,
              width: 500,
            ),
          ],
        ),
      ),
    );
  }
}
