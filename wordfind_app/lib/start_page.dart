import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'input_field.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/arrow_back.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          child: Image.asset('assets/game_logo.png'),
        ),
      ),
      body: Container(
        height: 50.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back2.png '),fit: BoxFit.cover )),
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Image.asset('assets/iCodeGuyHead.png'),
              Padding(padding: EdgeInsets.only(top: 20)),
              GradientText('Player Name', 20.0, ),
              InputField(),
              Padding(padding: EdgeInsets.only(top: 20))
            ],
          ),
        ),
      ),
      floatingActionButton: StartButton('Start'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton(String s, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 310,
        height: 60,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xFFE86B02),
                Color(0xFFFA9541),
              ],
            ),
            borderRadius: BorderRadius.circular(25)),
        child: ElevatedButton(
          onPressed: (){},
          child: Text(
            'Start',
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
        ));
  }
}
