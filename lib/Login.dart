import 'package:flutter/material.dart';
import 'package:my_app/register.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0EAE9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF40B4C4),
        elevation: 0,
        title: RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            children: [
              TextSpan(text: 'DN-', style: TextStyle(color: Colors.white)),
              TextSpan(text: 'AI', style: TextStyle(color: Color(0xFF002D62))),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 90),

              // LOGIN Heading
              const Text(
                "LOGIN",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF002D62),
                ),
              ),

              const SizedBox(height: 70),

              // Username
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: 'Enter Username',
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
             

              const SizedBox(height: 80),

              // Login Button - Dark Blue
              ElevatedButton(
                onPressed: () {
                  String user = usernameController.text;
                  String pass = passwordController.text;
                  print('Logged in: $user');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF002D62), // Dark Blue
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),



              

              const SizedBox(height: 20),

              // Register Button - Cyan (AppBar color)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const RegisterPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF40B4C4), // Same as AppBar
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),

               const SizedBox(height: 20),

              // Forgot password hyperlink - Center aligned
              Center(
                child: TextButton(
                  onPressed: () {
                    print("Forgot Password clicked");
                  },
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Optional hint text or footer
              // const Text("Don't have an account? Tap Register above."),
            ],
          ),
        ),
      ),
    );
  }
}
