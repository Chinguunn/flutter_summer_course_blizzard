import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/pages/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                  hintText: 'Entar your password',
                  isPassword: false,
                  textEditingController: _passwordController,
                  textInputType: TextInputType.text),
              SizedBox(
                height: 64,
              ),
              InkWell(
                onTap: () {},
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
                    child: Text('Нэвтрэх',),)
                ),
              ),
              SizedBox(height: 12,),
              Flexible(flex: 2,child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
