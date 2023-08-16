import 'package:flutter/material.dart';
import 'package:quizller/question_screen.dart';
import 'package:quizller/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
 Widget? activeScreen;

@override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen(){
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        child: activeScreen,
        
      ),
    ),
    );
  }
}