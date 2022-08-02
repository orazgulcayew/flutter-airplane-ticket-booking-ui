import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  Brightness brightness = Brightness.dark;

  Future<void> toggleTheme(bool isOn) async {
    brightness = isOn ? Brightness.dark : Brightness.light;

    notifyListeners();
  }

  bool get isDarkMode => brightness == Brightness.dark;
  ColorScheme get theme =>
      ColorScheme.fromSeed(seedColor: Colors.green, brightness: brightness);
}

// class Styles {
//   static TextStyle textStyle = const TextStyle(
//       fontSize: 16, color: Color(0xffffffff), fontWeight: FontWeight.w500);
//   static TextStyle headlineStyle1 = const TextStyle(
//       fontSize: 20, color: Color(0xffffffff), fontWeight: FontWeight.bold);
//   static TextStyle headlineStyle2 = const TextStyle(
//       fontSize: 18, color: Color(0xffffffff), fontWeight: FontWeight.bold);
//   static TextStyle headlineStyle3 =
//       const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
//   static TextStyle headlineStyle4 = const TextStyle(
//       fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500);
// }

const rhw = {
  "displayLarge": TextStyle(color: Color(0x8a000000), fontSize: 57.0),
  "displayMedium": TextStyle(color: Color(0x8a000000), fontSize: 45.0),
  "displaySmall": TextStyle(color: Color(0x8a000000), fontSize: 36.0),
  "headlineLarge": TextStyle(color: Color(0x8a000000), fontSize: 32.0),
  "headlineMedium": TextStyle(color: Color(0x8a000000), fontSize: 28.0),
  "headlineSmall": TextStyle(color: Color(0xdd000000), fontSize: 24.0),
  "titleLarge": TextStyle(color: Color(0xdd000000), fontSize: 22.0),
  "titleMedium": TextStyle(color: Color(0xdd000000), fontSize: 16.0),
  "titleSmall": TextStyle(color: Color(0xff000000), fontSize: 14.0),
  "bodyLarge": TextStyle(color: Color(0xdd000000), fontSize: 16.0),
  "bodyMedium": TextStyle(color: Color(0xdd000000), fontSize: 14.0),
  "bodySmall": TextStyle(color: Color(0x8a000000), fontSize: 12.0),
  "labelLarge": TextStyle(color: Color(0xdd000000), fontSize: 14.0),
  "labelMedium": TextStyle(color: Color(0xff000000), fontSize: 12.0),
  "labelSmall": TextStyle(color: Color(0xff000000), fontSize: 11.0),
};
