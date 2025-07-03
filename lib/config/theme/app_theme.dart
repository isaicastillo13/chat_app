import 'package:flutter/material.dart';

const Color customeColor = Color(0xFF6200EE); // Purple 500
const List<Color> colorsThemes = [
  customeColor, // Purple 500
  Color(0xFF03DAC6), // Teal
  Color(0xFFFF5722), // Deep Orange
  Color(0xFF4CAF50), // Green
  Color(0xFF2196F3), // Blue
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor <= colorsThemes.length,
        'selectedColor must be between 0 and ${colorsThemes.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorsThemes[selectedColor],
    );
  }
}
