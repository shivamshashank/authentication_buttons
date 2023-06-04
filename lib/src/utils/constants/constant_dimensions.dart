import 'package:flutter/material.dart';

class ConstantDimensions {
  static const small = 4;
  static const medium = 8;
  static const large = 16;

  static double screenWidth(
    BuildContext context,
  ) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(
    BuildContext context,
  ) =>
      MediaQuery.of(context).size.width;
}
