import 'package:flutter/material.dart';
import 'package:quizller/Data/questions.dart';
import 'package:quizller/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.restartQuiz, {super.key, required this.choosenAnswers});
  final List<String> choosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];

    for (int i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summary = getSummary();
    final numberOfQuestion = questions.length;
    final numberOfCorrectQuestion = summary.where((item) {
      return item['user_answer'] == item['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have answerd $numberOfCorrectQuestion out of $numberOfQuestion question correctly!",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(253, 205, 8, 240),fontSize: 24, fontWeight: FontWeight.w500 ),
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
                child: QuestionsSummary(summaryData: summary)),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 18),
                ),
                onPressed: restartQuiz,
                icon: const Icon(Icons.restart_alt_rounded),
                label: const Text("Restart quiz")),
          ],
        ),
      ),
    );
  }
}
