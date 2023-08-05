import 'dart:math';

import 'package:authentication_buttons/src/utils/constants/constant_dimensions.dart';
import 'package:authentication_buttons/src/utils/constants/constant_strings.dart';
import 'package:authentication_buttons/src/utils/enums/authentication_method.dart';
import 'package:authentication_buttons/src/utils/enums/button_size.dart';
import 'package:authentication_buttons/src/utils/extensions/string_casing_extension.dart';
import 'package:flutter/material.dart';

/// It is a widget that doesn't have any mutable state. Once created, a `StatelessWidget` remains unchanged throughout its lifetime.
/// This means that the widget's properties (the ones defined in its constructor) are final and cannot be changed after the widget is built.
class AuthenticationButton extends StatelessWidget {
  final AuthenticationMethod authenticationMethod;
  final VoidCallback onPressed;
  final ButtonSize buttonSize;
  final bool showLoader;

  /// In Order to create the AuthenticationButton object, you need to pass [authenticationMethod] and [onPressed] parameters.
  /// Whereas, [buttonSize] and [showLoader] is optional.
  const AuthenticationButton({
    super.key,
    required this.authenticationMethod,
    required this.onPressed,
    this.buttonSize = ButtonSize.large,
    this.showLoader = false,
  });

  @override
  Widget build(BuildContext context) {
    return buttonSize == ButtonSize.small

        /// For [ButtonSize.large], we are showing loader inside a button
        ? showLoader
            ? Center(
                child: CircularProgressIndicator(
                  color: authenticationMethod.color,
                ),
              )
            : GestureDetector(
                onTap: onPressed,
                child: Container(
                  decoration: BoxDecoration(
                    color: authenticationMethod.color,

                    /// Here, we are defining [borderRadius] to make button look circular
                    borderRadius: BorderRadius.circular(
                      ConstantDimensions.medium,
                    ),
                  ),
                  padding: const EdgeInsets.all(
                    ConstantDimensions.small,
                  ),
                  child: Container(
                    height: ConstantDimensions.buttonHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        ConstantDimensions.small,
                      ),
                    ),
                    padding: const EdgeInsets.all(
                      ConstantDimensions.medium,
                    ),
                    child: Image.asset(
                      ConstantStrings.imagePath(
                        authenticationMethod.name,
                      ),
                    ),
                  ),
                ),
              )
        : GestureDetector(
            onTap: showLoader ? () {} : onPressed,
            child: Container(
              width: min(
                ConstantDimensions.screenWidth(context) * 0.9,
                ConstantDimensions.buttonWidth,
              ),
              decoration: BoxDecoration(
                color: authenticationMethod.color,
                borderRadius: BorderRadius.circular(
                  ConstantDimensions.medium,
                ),
              ),
              padding: const EdgeInsets.all(
                ConstantDimensions.small,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: ConstantDimensions.buttonHeight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        ConstantDimensions.small,
                      ),
                    ),
                    padding: const EdgeInsets.all(
                      ConstantDimensions.medium,
                    ),

                    /// Showing image of AuthenticationMethod (For ex -> Google, Facebook)
                    child: Image.asset(
                      ConstantStrings.imagePath(
                        authenticationMethod.name,
                      ),
                    ),
                  ),
                  Expanded(
                    child: showLoader
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : Text(
                            '${ConstantStrings.continueWith} ${authenticationMethod.name.toCapitalized()}',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                  ),
                ],
              ),
            ),
          );
  }
}
