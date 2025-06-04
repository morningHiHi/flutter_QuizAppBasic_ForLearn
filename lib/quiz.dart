import 'package:adv_basics/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  //State<Quiz> createState() => _QuizState();
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Widget? activeScreen ;
  List<String> selectedAnswer = [];
  var activeScreen = 'start-Screen';

  void onSelectedAnswers(String answer) {
    selectedAnswer.add(answer);
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen != 'start-Screen') {
      screenWidget = QuestionScreen(onSelectedAnswers: onSelectedAnswers);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 103, 108, 198),
                const Color.fromARGB(255, 108, 16, 125),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child: screenWidget,
        ),
      ),
    );
  }
}
