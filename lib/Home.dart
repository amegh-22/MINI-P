import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF40B4C4), // Teal-light blue background
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'DN-A',
                style: TextStyle(color: Color(0xFF40B4C4)), // Light blue
              ),
              TextSpan(
                text: 'I',
                style: TextStyle(color: Color(0xFF002D62)), // Dark blue
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text(
          "Welcome to DN-AI!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
