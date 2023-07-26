import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradien_letter.dart';

import 'gradient_text.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            GradientLetter(letter: 'w'),
            GradientLetter(letter: 'O'),
            GradientLetter(letter: 'R'),
            GradientLetter(letter: 'd'),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 310,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFE86B02) , Color(0xFFFA9541)],

          ),
          borderRadius: BorderRadius.circular(25)
        ),
        child: ElevatedButton({}),
      ),
    );
  }
}
