import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:quiz_app/components/result.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.answers, this.onReset, {super.key});

  final List<String> answers;
  final void Function() onReset;

  @override
  Widget build(BuildContext context) {
    int correctAnswerCount = 0;
    for (int i = 0; i < questions.length; i++) {
      if (questions[i].answers[0] == answers[i]) correctAnswerCount++;
    }

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
            Text(
              'You got $correctAnswerCount out of ${questions.length} questions right',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const Gap(46),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.63,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  child: Column(
                    children: _showResults(),
                  ),
                ),
              ),
            ),
            // const Gap()
            const Spacer(),
            Center(
              child: TextButton(
                onPressed: onReset,
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

  List<Widget> _showResults() {
    List<Widget> results = [];

    for (int i = 0; i < questions.length; i++) {
      Result result = Result(
          questionIndex: i + 1,
          question: questions[i].question,
          correctAnswer: questions[i].answers[0],
          providedAnswer: answers[i]);

      results.add(result);
    }

    return results;
  }
}
