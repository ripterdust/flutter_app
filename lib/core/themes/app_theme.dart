import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  int selectedColor;
  bool dark;

  AppTheme({
    this.selectedColor = 0,
    this.dark = false,
  }) : assert(
          selectedColor < _colorThemes.length && selectedColor >= 0,
          'Colors must be between 0 and ${_colorThemes.length}',
        );

  getColor() {
    return _colorThemes[selectedColor];
  }

  Brightness getBrightness() {
    if (dark) {
      return Brightness.dark;
    }

    return Brightness.light;
  }

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: getColor(),
      brightness: getBrightness(),
    );
  }
}
