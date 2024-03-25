import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);
const List<Color> _colorsTheme = [
  _customColor,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Colors.cyan,
  Colors.pink,
  Colors.orange,
];

class AppTheme {

  final int colorSeed;

    AppTheme({
      this.colorSeed = 0
    }): assert(colorSeed > -1 && colorSeed<_colorsTheme.length, "'colorSeed' must be between [0:${_colorsTheme.length}]");

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorsTheme[colorSeed]
    );
  }
}