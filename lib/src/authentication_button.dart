import 'dart:math';

import 'package:authentication_buttons/src/utils/constants/constant_dimensions.dart';
import 'package:authentication_buttons/src/utils/constants/constant_strings.dart';
import 'package:authentication_buttons/src/utils/enums/authentication_method.dart';
import 'package:authentication_buttons/src/utils/enums/button_size.dart';
import 'package:authentication_buttons/src/utils/extensions/string_casing_extension.dart';
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
    return buttonSize == ButtonSize.small
        ? Container()
        : Container(
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
                  child: Image.asset(
                    ConstantStrings.imagePath(
                      authenticationMethod.name,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
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
          );
  }
}
