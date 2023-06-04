import 'package:authentication_buttons/src/utils/enums/authentication_method.dart';
import 'package:authentication_buttons/src/utils/enums/button_size.dart';
import 'package:flutter/material.dart';

class AuthenticationButton extends StatelessWidget {
  final AuthenticationMethod authenticationMethod;
  final ButtonSize buttonSize;

  const AuthenticationButton({
    super.key,
    required this.authenticationMethod,
    this.buttonSize = ButtonSize.large,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
