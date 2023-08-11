import 'package:flutter/material.dart';
import 'package:wordfind_app/Models/user_model.dart';
import 'package:wordfind_app/Task_page.dart';
import 'package:wordfind_app/start_page.dart';
import 'package:wordfind_app/welcome_page.dart';

void main() {
  final zugeerApp = MaterialApp(
      title: 'Word Find Game',
      theme: ThemeData(fontFamily: 'Ribeye'),
      home: Scaffold(body: WelcomePage()));
  runApp(zugeerApp);
}
