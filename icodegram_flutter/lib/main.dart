import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:icodegram_flutter/pages/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
      textTheme: Typography().white.apply(fontFamily: 'Rubik')
    ),
    home: LoginScreen(),
  ));
}
