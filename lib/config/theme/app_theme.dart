import 'package:flutter/material.dart';



const Color _customColor = Color(0xFFA356F6);
  final List<Color> _colorThemes = [
    _customColor,
    const Color.fromARGB(255, 124, 138, 3),
    const Color.fromARGB(255, 109, 2, 29),
    const Color.fromARGB(255, 245, 83, 153),
    Color.fromARGB(255, 100, 227, 227),
    const Color.fromARGB(255, 253, 164, 30),
  ];
class AppTheme {
    final int selectedColor;
  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 &&  selectedColor <= _colorThemes.length-1,
            'Colors must be between 0 and ${ _colorThemes.length -1 }');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      // brightness: Brightness.dark
    );
  }
}
