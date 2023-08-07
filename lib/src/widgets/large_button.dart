import 'dart:math';

import 'package:authentication_buttons/src/widgets/progress_loader.dart';
import 'package:flutter/material.dart';
import 'package:authentication_buttons/src/utils/enums/authentication_method.dart';
import 'package:authentication_buttons/src/utils/extensions/string_casing_extension.dart';

import 'package:authentication_buttons/src/utils/constants/constant_dimensions.dart';
import 'package:authentication_buttons/src/utils/constants/constant_strings.dart';

/// Here, [LargeButton] class requires 3 parameters -> [authenticationMethod, onPressed, showLoader]
class LargeButton extends StatelessWidget {
  const LargeButton({
    super.key,
    required this.authenticationMethod,
    required this.onPressed,
    required this.showLoader,
  });

  final AuthenticationMethod authenticationMethod;
  final VoidCallback onPressed;
  final bool showLoader;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: showLoader ? () {} : onPressed,
      child: Container(
        /// Here we are using [min] math Function to make the width of the button responsive
        /// such that it can work on larger screen as well (ex -> Desktop)
        width: min(
          ConstantDimensions.screenWidth(context) * 0.9,
          ConstantDimensions.buttonWidth,
        ),
        decoration: BoxDecoration(
          /// Container background color is [AuthenticationMethod -> Color]
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
              /// For [ButtonSize.large], we are showing loader inside a button
              child: showLoader
                  ? const ProgressLoader()
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
