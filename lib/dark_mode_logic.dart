library dark_mode_logic;

import 'package:flutter/material.dart';

/// Color Gate Class.
class ColorGate {
  /// Determines the color to return based on the theme brightness of your app.
  static Color? byMode(
      {Color? lightModeColor,
      Color? darkModeColor = Colors.white,
      required BuildContext context}) {
    return Theme.of(context).brightness == Brightness.dark
        ? darkModeColor
        : lightModeColor;
  }
}
