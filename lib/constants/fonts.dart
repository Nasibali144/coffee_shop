import 'package:flutter/material.dart';

class Fonts {
  Fonts._();
  static const baloo_2 = "Baloo_2";
  static const roboto = "Roboto";
}

TextStyle textStyleForBaloo_2W700(
    {double fontSize = 24, required Color color, double? height}) {
  return TextStyle(
    height: height,
    fontSize: fontSize,
    fontFamily: Fonts.baloo_2,
    fontWeight: FontWeight.bold,
    color: color,
  );
}

TextStyle textStyleForRobotoW700(
    {double fontSize = 14, required Color color, double? height}) {
  return TextStyle(
    height: height,
    fontSize: fontSize,
    fontFamily: Fonts.roboto,
    fontWeight: FontWeight.bold,
    color: color,
  );
}

TextStyle textStyleForRobotoW400(
    {double fontSize = 16, required Color color, double? height}) {
  return TextStyle(
    height: height,
    fontSize: fontSize,
    fontFamily: Fonts.roboto,
    fontWeight: FontWeight.w400,
    color: color,
  );
}

TextStyle textStyleForRoboto(
    {double fontSize = 16,
    required Color color,
    double? height,
    required FontWeight fontWeight}) {
  return TextStyle(
    height: height,
    fontSize: fontSize,
    fontFamily: Fonts.roboto,
    fontWeight: fontWeight,
    color: color,
  );
}
