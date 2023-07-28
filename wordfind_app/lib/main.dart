import 'package:flutter/material.dart';
import 'package:wordfind_app/welcome_page.dart';

void main() {
  final zugeerApp = MaterialApp(
    title: 'Word Find Game',
    theme: ThemeData(fontFamily: 'Ribeye'),
    home: Scaffold(
        body: WelcomePage(),

    )
  );
  runApp(zugeerApp);
}
