import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 30, 
            color: Colors.indigo,
            fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
