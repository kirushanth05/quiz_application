import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_app/components/result.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(
          left: 33,
          right: 33,
          top: 33,
          bottom: 12,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Results',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Text(
              'You got 8 out of 10 questions right',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const Gap(46),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.63,
              child: const SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  child: Column(
                    children: [
                      Result(
                        questionIndex: 0,
                        question:
                            'What are the main building blocks of Flutter UIs?',
                        correctAnswer: 'Widgets',
                        providedAnswer: 'Components',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // const Gap()
            const Spacer(),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Reset Quiz',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}