import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_app/components/custom_elevated_button.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 364,
            height: 114,
            child: Text(
              'Which programming language is used for Flutter?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Gap(80),
          CustomElevatedButton('Java'),
          Gap(24),
          CustomElevatedButton('Kotlin'),
          Gap(24),
          CustomElevatedButton('Dart'),
          Gap(24),
          CustomElevatedButton('Python'),
        ],
      ),
    );
  }
}
