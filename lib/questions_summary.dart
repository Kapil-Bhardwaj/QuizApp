import 'package:flutter/material.dart';

import 'Models/round_shape_text.dart';
import 'Models/show_result.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((item) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                RoundShapeText(
                    (((item['question_index'] as int) + 1).toString()),
                    item['user_answer'] as String,
                    item['correct_answer'] as String),
                   const  SizedBox(width: 10,),
                Expanded(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['question'] as String,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      ShowResult(
                          item['correct_answer'] as String, Colors.purple),
                      ShowResult(item['user_answer'] as String, Colors.blue),
                    const SizedBox(height: 8,),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
