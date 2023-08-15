import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  
  const StartScreen({super.key});

 void startQuiz(){
  
 }

  @override
  Widget build (context) {
    return  Center(
      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Image.asset('assets/images/img1.png',width: 300,),
                const SizedBox(height: 20),
               const  Text(
                  "Learn Flutter in Fun Way",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),
                OutlinedButton.icon(onPressed: startQuiz,
                 style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                 ),
                 icon: const  Icon(Icons.arrow_right_alt),
                  label: const Text("Start Quiz"),
                ),
              ],
            ),
    );
  }
}