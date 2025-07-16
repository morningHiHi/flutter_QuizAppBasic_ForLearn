import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/pages/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers ;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    int n = chosenAnswers.length;
    for (int i = 0; i < n; i++) {
      summary.add({
        'question_index': i,
        'question': question[i].text,
        'correct-answer': question[i].anwsers[0],
        'user-answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final int numTotalQuestions = question.length;
    final int numCorrectQuestion = summaryData.where((data) {
          return data['user-answer'] == data['correct-answer'];
        }).length;
    return SizedBox(
      width: double.infinity,

      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('you answered $numCorrectQuestion out of $numTotalQuestions question correctly!'),
            const SizedBox(height: 10),
            QuestionSummary(summaryData: getSummaryData()),
            Text('List of answers and question...'),
            //SizedBox(height: 10),
            TextButton(onPressed: () {}, child: Text('hello')),
          ],
        ),
      ),
    );
  }
}
