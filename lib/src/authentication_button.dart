import 'package:authentication_buttons/src/utils/enums/authentication_method.dart';
import 'package:authentication_buttons/src/utils/enums/button_size.dart';
import 'package:flutter/material.dart';

class AuthenticationButton extends StatelessWidget {
  final AuthenticationMethod authenticationMethod;
  final ButtonSize buttonSize;
  final bool showLoader;

  const AuthenticationButton({
    super.key,
    required this.authenticationMethod,
    this.buttonSize = ButtonSize.large,
    this.showLoader = false,
  });

  @override
  Widget build(BuildContext context) {
    return buttonSize == ButtonSize.small ? Container() : Container();
  }
}
