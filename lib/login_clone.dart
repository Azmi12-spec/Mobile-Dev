import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 60),

                      // Logo Facebook
                      const Text(
                        'facebook',
                        style: TextStyle(
                          color: Color(0xFF1877F2),
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1.5,
                        ),
                      ),
                      const SizedBox(height: 30),

                      // Input Mobile/Email (menggunakan Container margin seperti CalculatorPage)
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Mobile number or email address',
                            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                            filled: true,
                            fillColor: const Color(0xFFF2ECE9).withOpacity(0.5),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),

                      // Input Password
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                            filled: true,
                            fillColor: const Color(0xFFF2ECE9),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Tombol Log In
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0047FF),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Forgotten Password
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgotten password?',
                          style: TextStyle(
                            color: Color(0xFF1877F2),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Divider OR
                      Row(
                        children: const [
                          Expanded(child: Divider(color: Colors.grey, thickness: 0.8)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'or',
                              style: TextStyle(color: Colors.black87, fontSize: 14),
                            ),
                          ),
                          Expanded(child: Divider(color: Colors.grey, thickness: 0.8)),
                        ],
                      ),
                      const SizedBox(height: 32),

                      // Tombol Create New Account
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF00A82D),
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        child: const Text(
                          'Create New Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Footer
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('About', style: TextStyle(color: Colors.black87, fontSize: 13)),
                      SizedBox(width: 16),
                      Text('Help', style: TextStyle(color: Colors.black87, fontSize: 13)),
                      SizedBox(width: 16),
                      Text('More', style: TextStyle(color: Colors.black87, fontSize: 13)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Meta ', style: TextStyle(color: Colors.grey, fontSize: 12)),
                      Icon(Icons.copyright, size: 14, color: Colors.grey),
                      Text(' 2022', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],  
          ),
        ),
      ),
    );
  }
}