import 'package:flutter/material.dart';



const Color _customColor = Color(0xFFA356F6);
  final List<Color> _colorThemes = [
    _customColor,
    Colors.lime,
    Colors.amber,
    Colors.pink.shade800,
    Colors.cyanAccent.shade100,
    Colors.orange,
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
