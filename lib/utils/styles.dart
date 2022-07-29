import 'package:flutter/material.dart';

ColorScheme theme =
    ColorScheme.fromSeed(seedColor: Colors.green, brightness: Brightness.dark);

class Styles {
  static TextStyle textStyle = const TextStyle(
      fontSize: 16, color: Color(0xffffffff), fontWeight: FontWeight.w500);
  static TextStyle headlineStyle1 = const TextStyle(
      fontSize: 20, color: Color(0xffffffff), fontWeight: FontWeight.bold);
  static TextStyle headlineStyle2 = const TextStyle(
      fontSize: 18, color: Color(0xffffffff), fontWeight: FontWeight.bold);
  static TextStyle headlineStyle3 =
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle4 = const TextStyle(
      fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500);
}
