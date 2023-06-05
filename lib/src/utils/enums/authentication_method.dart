import 'package:authentication_buttons/src/utils/constants/constant_colors.dart';
import 'package:authentication_buttons/src/utils/constants/constant_strings.dart';
import 'package:flutter/material.dart';

enum AuthenticationMethod {
  google(
    color: ConstantColors.googleColor,
    name: ConstantStrings.google,
  ),
  apple(
    color: ConstantColors.appleColor,
    name: ConstantStrings.apple,
  ),
  microsoft(
    color: ConstantColors.microsoftColor,
    name: ConstantStrings.microsoft,
  ),
  facebook(
    color: ConstantColors.facebookColor,
    name: ConstantStrings.facebook,
  ),
  reddit(
    color: ConstantColors.redditColor,
    name: ConstantStrings.reddit,
  ),
  twitter(
    color: ConstantColors.twitterColor,
    name: ConstantStrings.twitter,
  ),
  linkedin(
    color: ConstantColors.linkedinColor,
    name: ConstantStrings.linkedin,
  ),
  github(
    color: ConstantColors.githubColor,
    name: ConstantStrings.github,
  ),
  medium(
    color: ConstantColors.mediumColor,
    name: ConstantStrings.medium,
  ),
  dribbble(
    color: ConstantColors.dribbbleColor,
    name: ConstantStrings.dribbble,
  ),
  spotify(
    color: ConstantColors.spotifyColor,
    name: ConstantStrings.spotify,
  ),
  pinterest(
    color: ConstantColors.pinterestColor,
    name: ConstantStrings.pinterest,
  );

  const AuthenticationMethod({
    required this.color,
    required this.name,
  });

  final Color color;
  final String name;
}
