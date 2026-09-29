import 'package:flutter/material.dart';

class CalcuTextfields extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final TextInputType? keyboardType; 

  const CalcuTextfields({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false, // Default nilainya false
    this.keyboardType, // 2. Tambahkan di constructor
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType, // 3. Terapkan pada TextField bawaan
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 14,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: Color(0xFF00A2E9),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}