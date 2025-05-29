import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton({super.key, required this.answers, required this.ontap});

  final String answers;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(212, 69, 25, 162),
        foregroundColor: const Color.fromARGB(255, 22, 123, 74),
        shadowColor: Colors.black45,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)), 
      ),
      child: Text(
        answers,
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
