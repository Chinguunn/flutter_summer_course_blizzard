import 'package:flutter/material.dart';
import 'package:icodegram_flutter/pages/gradient_text.dart';
import 'package:icodegram_flutter/pages/text_field.dart';
import 'package:icodegram_flutter/pages/home_screen.dart';
import 'package:icodegram_flutter/pages/login.dart';
import 'auth_Method.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
  }

  void signUpUser() async {
    {
      setState(() {
        _isLoading = true;
      });

      String result = await AuthMethods().signUpUser(
          email: _emailController.text,
          password: _passwordController.text,
          username: _userController.text);

      if (result == "success") {
        setState(() {
          _isLoading = false;
        });

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
        print('Logged in');
      } else {
        print('Not logged in');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
              Text(
                'iCodegram',
                style: TextStyle(fontSize: 34, fontFamily: 'Lobster'),
              ),
              SizedBox(
                height: 64,
              ),
              TextFieldInput(
                  hintText: 'И Мэйл',
                  isPassword: false,
                  textEditingController: _emailController,
                  textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Нэр',
                isPassword: false,
                textEditingController: _userController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Нууц үг',
                isPassword: true,
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'нууц үг давтах',
                isPassword: true,
                textEditingController: _rePasswordController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              InkWell(
                onTap: signUpUser,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text('бүртгүүлэх' ),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.orange),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text('Эсвэл'),
              Text('бүртгэлтэй юу?'),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    child: Center(
                      child: _isLoading
                          ? Center(
                          child: CircularProgressIndicator(
                             ))
                          : Text('Нэвтрэх',
                        style: TextStyle(
                          color: Colors.orange
                        ),
                      ),
                    )),
              ),
              Flexible(
                child: Container(),
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
