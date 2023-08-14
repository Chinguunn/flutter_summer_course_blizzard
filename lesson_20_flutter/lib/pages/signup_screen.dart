import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/pages/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

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
              Text(
                'Icodegram',
                style: TextStyle(fontSize: 34),
              ),
              SizedBox(
                height: 64,
              ),
            TextFieldInput(hintText: 'утасны дугаар', isPassword: false,
            textEditingController: _phoneNumberController
            ),
              SizedBox(height: 24,),
              TextFieldInput(hintText: 'Нэр', isPassword: false,
              textEditingController: _userController,
              ),
              SizedBox(height: 24,),
             TextFieldInput(hintText: 'Нууц үг', isPassword: true,
             textEditingController: _passwordController,
             ),
              SizedBox(height: 24,),
              TextFieldInput(hintText: 'нууц үг давтах', isPassword: true,
              textEditingController: _rePasswordController,
              ),
              SizedBox(height: 24,),
Flexible(child: Container(),
flex: 2,
),

         InkWell(
           onTap: (){} ,
           child: Container(
             width: double.infinity,
             alignment: Alignment.center,
             padding: EdgeInsets.symmetric(vertical: 12),
             child: Text('бүртгүүлэх'),
             decoration: ShapeDecoration(shape:
             RoundedRectangleBorder(
               borderRadius: BorderRadius.all(Radius.circular(4)),

             )
             ,color:Colors.blueAccent),
           ),
         ),
              SizedBox(
                height: 12,
              ),

              Flexible(child: Container(),
              flex: 2,)
            ],
          ),
        ),
      ),
    );
  }
}
