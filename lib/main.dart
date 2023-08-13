import 'package:flutter/material.dart';

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
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 83, 5, 97),
                  Color.fromARGB(255, 39, 4, 45),
                ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              SizedBox(
                width: 400,
                height: 400,
                child: Image.asset('assets/images/img1.png'),
                ),
              const SizedBox(height: 20),
             const  Text(
                "Learn Flutter in Fun Way",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                onPressed: startQuiz,
                child: const Text("Start Quiz"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
