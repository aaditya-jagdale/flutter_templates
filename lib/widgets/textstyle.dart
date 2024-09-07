import 'package:boilerplate/widgets/colors.dart';
import 'package:flutter/material.dart';

abstract final class CustomTextStyle {
  //Heading
  static TextStyle heading1(
      {Color textColor = CustomColors.white,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: textColor,
      fontSize: 40,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle heading2(
      {Color textColor = CustomColors.white,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: textColor,
      fontSize: 24,
      fontWeight: fontWeight,
    );
  }

  static TextStyle heading3(
      {Color textColor = CustomColors.white,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: fontWeight,
    );
  }

  //Body

  static body1(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 36,
      fontWeight: FontWeight.normal,
    );
  }

  static body2(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 20,
      fontWeight: FontWeight.normal,
    );
  }

  static body3(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );
  }

  static body4(Color textColor) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }

  //Others
}
