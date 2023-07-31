import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradien_letter.dart';
import 'gradient_text.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFBF5F2),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/back1.png'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 200),
              ),
              Expanded(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientLetter(letter: 'w'),
                      GradientLetter(letter: 'O'),
                      GradientLetter(letter: 'R'),
                      GradientLetter(letter: 'd'),
                    ],
                  ),
                  GradientText('GAME', 31.6),
                  Image.asset('assets/iCodeGuy.png' ),

                   Expanded(child: GradientText('READY?', 25.0))
                ],
              )),
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
                colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: Text(
                'PLAY',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
