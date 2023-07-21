import 'package:flutter/material.dart';

import 'gradient_text.dart';


class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child: GradientText('GAME', 31.6));
  }

}