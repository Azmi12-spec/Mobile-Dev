import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Calculator Page")),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: const TextField(decoration: InputDecoration(hintText: "Input Number 1"))),
            Container(
              margin: const EdgeInsets.all(10),
              child: const TextField(decoration: InputDecoration(hintText: "Input Number 2"))),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: const Text("+", style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold,
                     color: Colors.red,))),
              const SizedBox(width: 5),
              ElevatedButton(onPressed: (){}, child: const Text("-", style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold,
                     color: Colors.purple,))),
              const SizedBox(width: 5),
              ElevatedButton(onPressed: (){}, child: const Text("*", style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.bold,
                     color: Colors.lightBlueAccent,))),
              const SizedBox(width: 5),
              ElevatedButton(onPressed: (){}, child: const Text("/", style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey ))),
            ],
          ),
          const SizedBox(height: 30), 

          const Text(
            "Hasil: ", 
            style: TextStyle(
              fontSize: 24, 
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20), 
            ElevatedButton(
            onPressed: () {}, 
            child: const Text(
              "Reset", 
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )
            )
          ),
          
          ],
        ),
    );
  }
}