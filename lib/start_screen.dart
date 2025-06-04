import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/images/icons8flutter100.png',
            width: 300,
            //height: 200,
            fit: BoxFit.cover,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          const SizedBox(height: 30),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
            label: const Text(
              'Bấm nút này',
              //style: TextStyle(color: Colors.white60),
            ),
          ),
        ],
      ),
    );
  }
}
