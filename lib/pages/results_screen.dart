import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    int n = chosenAnswers.length;
    for (int i = 0; i < n; i++) {
      summary.add({'question_index': i,
      'question': question[i].text,
      'correct-answer': question[i].anwsers[0],
      'user-answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('you answered X out of Y question correctly!'),
        SizedBox(height: 10),
        TextButton(onPressed: () {}, child: Text('hello')),
      ],
    );
  }
}
