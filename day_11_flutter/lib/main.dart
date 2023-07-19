import 'package:flutter/material.dart';

void main() {
  print('Day 11 flutter application');

  const myApp = MaterialApp(
      home: Center(
          child: Text('hello Blizzard',
              style: TextStyle(color: Color(0xFFFFFFFF)))));
  MaterialApp myNextApp = MaterialApp(
      title: 'Word Find Game',
      theme: ThemeData(fontFamily: 'Ribeye'),
      home: const Scaffold(
        body: Center(
          child: Text('Hello Blizzard',
              style: TextStyle(fontSize: 24, color: Color(0x43a6b1ff))),
        ),
      ));

  final MyNiceApp temuujin = MyNiceApp();
  runApp(temuujin);
}

class MyNiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My Nice App'),
          ),
          body: Container(
              child: Center(
            child: Text('Hello',
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0x7a0c61ff),
                    fontFamily: 'Ribeye')),
          )),
          floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Image.asset(
                'assets/facebook.png',
                width: 200,
              ))),
    );
  }
}
