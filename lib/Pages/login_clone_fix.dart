import 'package:tes/Components/Custom_TextFIelds.dart';
import 'package:flutter/material.dart';

class LoginCloneFix extends StatefulWidget {
  const LoginCloneFix({super.key});

  @override
  State<LoginCloneFix> createState() => _LoginCloneFixState();
}

class _LoginCloneFixState extends State<LoginCloneFix> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Facebook"),
        backgroundColor: const Color(0xFF1877F2),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 20),
              child: const Text(
                "facebook",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1877F2),
                  letterSpacing: -1.2,
                ),
              ),
            ),

            // Input Username / Email / Nomor HP
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: CustomTextfield(
                hint: "Nomor ponsel atau email",
                txtController: txtUsername,
                cornerRadius: 10,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: CustomTextfield(
                hint: "Kata sandi",
                txtController: txtPassword,
                cornerRadius: 10,
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
              Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1877F2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Masuk",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Lupa kata sandi?",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}