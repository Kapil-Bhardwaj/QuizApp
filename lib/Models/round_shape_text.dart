import 'package:flutter/material.dart';

class RoundShapeText extends StatelessWidget {
  const RoundShapeText(this.questionNumber, this.userAns, this.correctAns,
      {super.key});
 final String questionNumber, userAns, correctAns;

  @override
  Widget build(ctx) {
    final Color color;
    if (userAns == correctAns) {
      color = Colors.green;
    } else {
      color = Colors.red;
    }
    return Container(
        width: 25,
        height: 25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(questionNumber,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ));
  }
}
