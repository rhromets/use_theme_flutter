import 'package:flutter/material.dart';

Widget addVerticalSpace(double? height) {
  return SizedBox(height: height);
}

Widget addHorisontalSpace(double? width) {
  return SizedBox(width: width);
}

double getDynamicHeight10(BuildContext? context) {
  if (context == null) {
    return 10;
  }
  final double height10 = MediaQuery.of(context).size.height / 80;
  return height10;
}
