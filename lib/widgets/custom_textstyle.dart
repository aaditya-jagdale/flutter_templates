import 'package:boilerplate/widgets/colors.dart';
import 'package:flutter/material.dart';

abstract final class CustomTextstyle {
  static const TextStyle heading1Bold = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: CustomColors.black,
  );
  static const TextStyle heading1 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.normal,
    color: CustomColors.black,
  );

  static const TextStyle heading2Bold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: CustomColors.black,
  );
  static const TextStyle heading2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: CustomColors.black,
  );
  static const TextStyle heading3Bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: CustomColors.black,
  );
  static const TextStyle heading3 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: CustomColors.black,
  );

  static const TextStyle body1Bold = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: CustomColors.black,
  );

  static const TextStyle body1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.normal,
    color: CustomColors.black,
  );

  static const TextStyle body2Bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: CustomColors.black,
  );

  static const TextStyle body2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: CustomColors.black,
  );

  static const TextStyle body3Bold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: CustomColors.black,
  );

  static const TextStyle body3 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: CustomColors.black,
  );

  static const TextStyle captionBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: CustomColors.black,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: CustomColors.black,
  );
}
