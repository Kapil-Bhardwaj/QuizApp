import 'package:flutter/material.dart';
import 'package:quizller/start_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void startQuiz() {}

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 83, 5, 97),
                Color.fromARGB(255, 39, 4, 45),
              ]),
        ),
        child: const StartScreen(),
      ),
    );
  }
}
