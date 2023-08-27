import 'package:flutter/material.dart';
import 'package:quizller/Data/questions.dart';
import 'package:quizller/question_screen.dart';
import 'package:quizller/result_screen.dart';
import 'package:quizller/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
 String activeScreen='start-screen';

 List<String> selectedAnswers =[];

 void chooseAnswer(String answer){
 selectedAnswers.add(answer);

 if(selectedAnswers.length == questions.length){
  setState(() {
    activeScreen = 'result-screen';
  });
 }

 }

  void switchScreen(){
    setState(() {
      activeScreen='question-screen';
    });
  }
 void restartQuiz(){
  setState(() {
    activeScreen ='start-screen';
  });
 }
  @override
  Widget build(BuildContext context) {
  Widget screenWidget = StartScreen(switchScreen);
   if(activeScreen == 'question-screen'){
    screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
   }
   if(activeScreen == 'result-screen'){
    screenWidget =  ResultScreen(choosenAnswers: selectedAnswers, restartQuiz);
   }
  if(activeScreen == 'start-screen'){
    selectedAnswers =[];
    screenWidget =  StartScreen(switchScreen);
   }
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
        child: screenWidget,
        
      ),
    ),
    );
  }
}