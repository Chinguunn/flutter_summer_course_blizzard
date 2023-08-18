import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/pages/signup_screen.dart';
import 'package:lesson_20_flutter/pages/text_field.dart';
import 'package:lesson_20_flutter/resourses/auth_Method.dart';
import 'package:lesson_20_flutter/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void loginUser() async {
    String result = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (result == 'success') {
      print('logged in');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      print('not logged in');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),
              Text('iCodeStagram'),
              SizedBox(
                height: 64,
              ),
              TextFieldInput(
                hintText: 'Enter your email',
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
                isPassword: false,
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  hintText: 'Enter your password',
                  isPassword: true,
                  textEditingController: _passwordController,
                  textInputType: TextInputType.text),
              SizedBox(height: 64),
              InkWell(
                onTap: loginUser,
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
                                  color: Colors.orange))
                          : Text('Нэвтрэх'),
                    )),
              ),
              Text('Эсвэл'),
              Text('Шинэ хэрэглэгчүү?'),
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));},
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
                              color: Colors.orange))
                          : Text('Бүртгүүлэх'),
                    )),
              ),



              SizedBox(
                height: 12,
              ),
              Flexible(flex: 2, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
