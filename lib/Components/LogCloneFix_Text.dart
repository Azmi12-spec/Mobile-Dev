import 'package:flutter/material.dart';

class LogCloneFixText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final double letterSpacing;

  const LogCloneFixText({
    super.key, 
    required this.text, 
    this.fontSize = 16, 
    this.fontWeight = FontWeight.normal, 
    this.color = Colors.black,
    this.letterSpacing = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
      ),
    );
  }
}