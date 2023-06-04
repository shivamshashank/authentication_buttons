import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        title: 'Authentication Buttons',
        home: AuthenticationButtonsExample(),
      ),
    );

class AuthenticationButtonsExample extends StatelessWidget {
  const AuthenticationButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Authentication Buttons',
        ),
      ),
    );
  }
}
