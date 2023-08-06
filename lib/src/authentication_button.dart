import 'package:authentication_buttons/src/utils/enums/authentication_method.dart';
import 'package:authentication_buttons/src/utils/enums/button_size.dart';
import 'package:authentication_buttons/src/widgets/large_button.dart';
import 'package:authentication_buttons/src/widgets/small_button.dart';
import 'package:flutter/material.dart';

/// It is a widget that doesn't have any mutable state. Once created, a `StatelessWidget` remains unchanged throughout its lifetime.
/// This means that the widget's properties (the ones defined in its constructor) are final and cannot be changed after the widget is built.
class AuthenticationButton extends StatelessWidget {
  /// In Order to create the AuthenticationButton object, you need to pass [authenticationMethod] and [onPressed] parameters.
  /// Whereas, [buttonSize] and [showLoader] is optional.
  const AuthenticationButton({
    super.key,
    required this.authenticationMethod,
    required this.onPressed,
    this.buttonSize = ButtonSize.large,
    this.showLoader = false,
  });

  final AuthenticationMethod authenticationMethod;
  final VoidCallback onPressed;
  final ButtonSize buttonSize;
  final bool showLoader;

  @override
  Widget build(BuildContext context) {
    /// Showing buttons based in [ButtonSize]
    return buttonSize == ButtonSize.small
        ? SmallButton(
            authenticationMethod: authenticationMethod,
            onPressed: onPressed,
            showLoader: showLoader,
          )
        : LargeButton(
            authenticationMethod: authenticationMethod,
            onPressed: onPressed,
            showLoader: showLoader,
          );
  }
}
