import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getTheme(value) {
    if (value) {
      return ThemeData.light();
    } else {
      return ThemeData.dark();
    }
  }
}
