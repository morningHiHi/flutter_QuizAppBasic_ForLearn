import 'package:adv_basics/answers_button.dart';
//import 'package:adv_basics/models/quiz_question.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

var ran = Random();

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectedAnswers});
  final void Function(String answer) onSelectedAnswers;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void chagneCurrentQuestionIndex(String answer) {
    widget.onSelectedAnswers(answer);
    setState(() {
      currentQuestionIndex = ran.nextInt(10) ;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion =
        question[currentQuestionIndex]; //lấy câu hỏi từ danh sách
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40), //khoangr cachs cuar cac widget trong layout
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text, //lấy phần câu hỏi của câu hỏi hiện tại
              style: GoogleFonts.tiltPrism(
                color: const Color.fromARGB(26, 0, 0, 0),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),

              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            ...currentQuestion.getAnwsersShuffle().map((item) {
              //sử dụng toán tử lan truyền->ba chấm(...) để chèn một danh sách vào một danh sách khác

              return AnswersButton(
                answers: item,
                ontap: (){
                  chagneCurrentQuestionIndex(item);
                }
              );
            }),

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
