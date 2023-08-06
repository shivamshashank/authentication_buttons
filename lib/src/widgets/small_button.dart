import 'package:authentication_buttons/src/utils/constants/constant_dimensions.dart';
import 'package:authentication_buttons/src/utils/constants/constant_strings.dart';
import 'package:authentication_buttons/src/utils/enums/authentication_method.dart';
import 'package:authentication_buttons/src/widgets/progress_loader.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
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
    return showLoader

        /// Here, we are showing loader if we are authenticating the user
        ? ProgressLoader(
            color: authenticationMethod.color,
          )
        : GestureDetector(
            onTap: onPressed,

            /// It is used to authenticate user to Social Media
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
                  /// Container background color is white
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
          );
  }
}
