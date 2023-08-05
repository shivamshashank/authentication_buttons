import 'package:flutter/material.dart';

class ConstantDimensions {
  static const double smallest = 2.0;
  static const double small = 4.0;
  static const double medium = 8.0;
  static const double large = 16.0;
  static const double largest = 32.0;

  static const double buttonWidth = 372.0;
  static const double buttonHeight = 48.0;

  /// It returns the width of the screen as a `double` value.
  static double screenWidth(
    BuildContext context,
  ) =>
      MediaQuery.of(context).size.width;

  /// It returns the height of the screen as a `double` value.
  static double screenHeight(
    BuildContext context,
  ) =>
      MediaQuery.of(context).size.width;
}
