import 'package:demo_project/data.dart';
import 'package:flutter/material.dart';

void main() => runApp(const TeamsRank());

class TeamsRank extends StatefulWidget {
  const TeamsRank({Key? key}) : super(key: key);

  @override
  _TeamsRankState createState() => _TeamsRankState();
}

class _TeamsRankState extends State<TeamsRank> {
  String input = "";
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Team Ranks For Flutter Festival 2022"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: TextField(
                controller: myController,
                decoration: const InputDecoration(labelText: "Enter the rank"),
              ),
            ),
            ElevatedButton(
              child: const Text("Reveal us the team!"),
              onPressed: () {
                setState(() {
                  input = myController.text;
                });
                myController.clear();
              },
            ),
            const SizedBox(height: 20),
            Text(teamsRank[input]!),
          ],
        ),
      ),
    );
  }
}
