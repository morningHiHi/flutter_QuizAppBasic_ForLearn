import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/pages/question_screen.dart';
import 'package:adv_basics/pages/results_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/pages/start_screen.dart';

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
  String activeScreen = 'start-Screen';

  //lưu câu trả lời của người dùng
  void onSelectedAnswers(String answer) {
    selectedAnswer.add(answer);
    //print(answer);
    if (selectedAnswer.length == question.length) {
      setState(() {
        activeScreen = 'result-screen';
        //selectedAnswer.clear();

      });
    }
  }

  //cập nhập đổi màn hình
  void switchScreen() {
    setState(() {
      activeScreen = 'question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'start-Screen') {
      screenWidget = QuestionScreen(onSelectedAnswers: onSelectedAnswers);
    }else if (activeScreen == 'result-screen'){
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswer,);
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
