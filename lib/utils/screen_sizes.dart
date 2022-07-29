import 'package:flutter/material.dart';

class AppScreenSizes {
  static getScreenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
