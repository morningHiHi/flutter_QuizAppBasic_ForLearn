
import 'package:adv_basics/app/quiz.dart';
//import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';
//import 'dart:ui';

void main() {
  runApp(MyApp());
}

// class Temp {
//   void writeNotfic() {
//     print('vui vai');
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Quiz();
  }
}
