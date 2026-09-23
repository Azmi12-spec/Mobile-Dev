import 'package:flutter/material.dart';

class LogCloneFixButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double cornerRadius;
  final Color backgroundColor;

  const LogCloneFixButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.cornerRadius,
    this.backgroundColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white, 
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}