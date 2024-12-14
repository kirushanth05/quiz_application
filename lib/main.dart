import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue.shade900, Colors.blue.shade100],
                )
            ),
            child: StartScreen()
            )
          )));
}
