import 'package:flutter/material.dart';
import 'dart:async';

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
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
void initState() {
  super.initState();
  // Removed navigation so the splash screen stays
}

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Wait for 4 seconds then navigate
//     Timer(const Duration(seconds: 4), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => NextPage()),
//       );
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 234, 233), // Background color
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 187, 211),
        elevation: 0,
        title: const Text(
          'DN-AI',
          style: TextStyle(
            color: Color.fromARGB(255, 235, 238, 240), // Title color
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
         ),
        // centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/DNA.png', // Make sure this is in pubspec.yaml
              height: 200,
            ),
            const SizedBox(height: 20),
            RichText(
  text: TextSpan(
    style: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
    ),
    children: [
      TextSpan(
        text: 'DN-A',
        style: TextStyle(color: Color(0xFF40B4C4)), // match your logo's blue
      ),
      TextSpan(
        text: 'I',
        style: TextStyle(color: Color(0xFF002D62)), // dark blue
      ),
    ],
  ),
),

            // const Text(
            //   'DN-AI',
            //   style: TextStyle(
            //     fontSize: 30,
            //     color: Colors.cyan,
            //     fontWeight: FontWeight.bold,
            //     letterSpacing: 2,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Next Page")),
      body: const Center(child: Text("Welcome to DN-AI!")),
    );
  }
}
