import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hint; 
  final TextEditingController txtController;
  final double cornerRadius;


  const MyTextField({
    super.key, 
    required this.hint, 
    required this.txtController, 
    required this.cornerRadius, required String myHint,

  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        fillColor: const Color(0xFFF2ECE9).withOpacity(0.5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
      ),
    );
  }
}