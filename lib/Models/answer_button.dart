import 'package:flutter/material.dart';

class Answerbutton extends StatelessWidget {
  const Answerbutton({required this.onTap, required this.answerText, super.key});
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const  EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        foregroundColor:  Colors.white,
        backgroundColor: const Color.fromARGB(255, 88, 3, 124),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      onPressed: onTap,
      child: Text(answerText,textAlign: TextAlign.center,),
    );
  }
}
