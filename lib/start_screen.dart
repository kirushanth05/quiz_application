import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('Start Screen',
            style: TextStyle(color: Colors.white, fontSize: 40)));
  }
}