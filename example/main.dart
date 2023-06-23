import 'package:authentication_buttons/src/authentication_button.dart';
import 'package:authentication_buttons/src/utils/enums/authentication_method.dart';
import 'package:authentication_buttons/src/utils/enums/button_size.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        title: 'Authentication Buttons',
        home: AuthenticationButtonsExample(),
      ),
    );

class AuthenticationButtonsExample extends StatelessWidget {
  const AuthenticationButtonsExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Authentication Buttons',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AuthenticationButton(
            authenticationMethod: AuthenticationMethod.google,
            onPressed: () {},
          ),
          AuthenticationButton(
            authenticationMethod: AuthenticationMethod.pinterest,
            onPressed: () {},
            showLoader: true,
          ),
          AuthenticationButton(
            authenticationMethod: AuthenticationMethod.microsoft,
            onPressed: () {},
            showLoader: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AuthenticationButton(
                authenticationMethod: AuthenticationMethod.twitter,
                onPressed: () {},
                buttonSize: ButtonSize.small,
              ),
              AuthenticationButton(
                authenticationMethod: AuthenticationMethod.dribbble,
                onPressed: () {},
                buttonSize: ButtonSize.small,
                showLoader: true,
              ),
              AuthenticationButton(
                authenticationMethod: AuthenticationMethod.spotify,
                onPressed: () {},
                buttonSize: ButtonSize.small,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
