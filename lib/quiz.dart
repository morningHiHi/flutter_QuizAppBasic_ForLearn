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
  var activeScreen = 'start-Screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      //activeScreen = const QuestionScreen();
      activeScreen = 'question-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 254, 254, 254),
                //const Color.fromARGB(255, 88, 44, 164),
                const Color.fromARGB(255, 108, 16, 125),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          //margin: EdgeInsets.all(50.0),
          //padding: EdgeInsets.all(20.0),
          //child: activeScreen,
          child:
              activeScreen == 'start-Screen'
                  ? StartScreen(switchScreen)
                  : QuestionScreen(),
        ),
      ),
    );
  }
}
