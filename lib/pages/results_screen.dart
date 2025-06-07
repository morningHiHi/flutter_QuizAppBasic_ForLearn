import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('you answered X out of Y question correctly!'),
        SizedBox(height: 10,),
        TextButton(onPressed: (){}, child: Text('hello'))
      ],
    );
  }
}