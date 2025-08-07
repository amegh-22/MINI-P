import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/Home.dart';

void main() {
  runApp(const DNAIApp());
}

class DNAIApp extends StatelessWidget {
  const DNAIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DN-AI',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  // @override
  // void initState() {
  //   super.initState();

  //   // Initialize animation
  //   _controller =
  //       AnimationController(vsync: this, duration: const Duration(seconds: 3));
  //   _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

  //   // Start animation
  //   _controller.forward();
    
  // }
   @override
  void initState() {
    super.initState();

    // Start fade-in animation
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();

    // Navigate after 4 seconds
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 234, 233),
      body: SafeArea(
        child: FadeTransition(
          opacity: _animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Image.asset(
                'assets/DNA.png',
                height: 260,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 145),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'DN-',
                          style: TextStyle(color: Color(0xFF40B4C4)),
                        ),
                        TextSpan(
                          text: 'AI',
                          style: TextStyle(color: Color.fromARGB(255, 2, 49, 102)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
