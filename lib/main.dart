import 'package:flutter/material.dart';
import 'package:my_app/Home.dart';
import 'splash.dart'; // This should point to your splash screen file

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
      // Splash is the starting page
      home: SplashScreen(),
      // Optionally define routes
      routes: {
        '/home': (context) => const HomePage(),
        '/splash': (context) => SplashScreen(),
      },
    );
  }
}
