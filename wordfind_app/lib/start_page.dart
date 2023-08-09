import 'package:flutter/material.dart';
import 'package:wordfind_app/Models/user_model.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'input_field.dart';

User newUser = User("Guest", 0);

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
                image: AssetImage('assets/back2.png '), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Image.asset('assets/iCodeGuyHead.png'),
              Padding(padding: EdgeInsets.only(top: 20)),
              GradientText(
                'Player Name',
                20.0,
              ),
              Padding(padding: EdgeInsets.only(top: 20))
            ],
          ),
        ),
      ),
      floatingActionButton: StartButton('Start'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _createUser(String userName) {
    setState(() {
      newUser.userName;
    });
  }
}

class StartButton extends StatelessWidget {
  const StartButton(User newUser, {super.key});

  @override
  Widget build(BuildContext context) {
    if (newUser.userName == 'Guest') {
      return Container();
    } else {
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
            onPressed: () {},
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
}
