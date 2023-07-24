import 'package:flutter/material.dart';

import 'immurtable_widget.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("My Flutter App"),
        actions: [Icon(Icons.edit), Padding(padding: EdgeInsets.all(10))],
      ),
      body: const Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: ImmutableWidget(),
        ),
      ),
      drawer: Drawer(
          child: Container(
              color: Colors.lightBlue,
              child: Center(
                child: Text('I am a drawer'),
              ))),
    );
  }
}
