import 'package:flutter/material.dart';

class ShowResult extends StatelessWidget {
  const ShowResult(this.text, this.color, {super.key});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 12,
      ),
    );
  }
}
