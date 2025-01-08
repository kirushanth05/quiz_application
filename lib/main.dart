import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    const MainScreen(),
  );
}

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  dynamic currentScreen;

  /*
    
    uploadScore(String playerID, dyanmic scores, Function(value) onScoreUpload) {
        // send the player id and the score to the server
        // get the response from the server
        
        onScoreUpload(serverResponse);
    }

    // a callback function
    printSuccessMessage(value) {
      print('Success');
    }
    uploadScore('P001', '5-3', printSuccessMessage)
  */

  @override
  void initState() {
    currentScreen = StartScreen(
      onButtonPressed: switchScreen,
    );
    super.initState();
  }

  void switchScreen() {
    setState(() {
      currentScreen = QuizScreen(
        onQuizComplete: (answers) {
          setState(() {
            currentScreen = ResultsScreen(answers, () {
              setState(() {
                currentScreen = StartScreen(
                  onButtonPressed: switchScreen,
                );
              });
            });
          });
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff01356B), Color(0xff0268D1)],
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
