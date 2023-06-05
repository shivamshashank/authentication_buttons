import 'package:authentication_buttons/src/authentication_button.dart';
import 'package:authentication_buttons/src/utils/enums/authentication_method.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        title: 'Authentication Buttons',
        home: _AuthenticationButtonsExample(),
      ),
    );

class _AuthenticationButtonsExample extends StatelessWidget {
  const _AuthenticationButtonsExample();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Authentication Buttons',
        ),
      ),
      body: ListView(
        children: const [
          AuthenticationButton(
            authenticationMethod: AuthenticationMethod.google,
          ),
        ],
      ),
    );
  }
}
