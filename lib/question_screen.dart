import 'package:adv_basics/answers_button.dart';
//import 'package:adv_basics/models/quiz_question.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

var ran = Random();

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
   
    var currentQuestionIndex = 0;
    void chagneCurrentQuestionIndex(){
      setState(() {
        currentQuestionIndex = ran.nextInt(10)+1;  
      });
    }

  @override
  Widget build(context) {
    final currentQuestion = question[currentQuestionIndex];
    return  SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),//khoangr cachs cuar cac widget trong layout
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [ 
            Text(currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white10,
                fontSize: 24,
                 
              ),
              // style: TextStyle(
              //   color: Colors.white,
              // ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            ...currentQuestion.getAnwsersShuffle().map((item){
              return AnswersButton(answers: item,ontap: chagneCurrentQuestionIndex,);
            })
            // AnswersButton(answers: currentQuestion.anwsers[0], ontap: (){}),
            // AnswersButton(answers: currentQuestion.anwsers[1], ontap: (){}),
            // AnswersButton(answers: currentQuestion.anwsers[2], ontap: (){}),
            // AnswersButton(answers: currentQuestion.anwsers[3], ontap: (){}),
            // AnswersButton(answers: currentQuestion.anwsers[4 ], ontap: (){}),
            
          ],
        ),
      ),
    );
  }
}
