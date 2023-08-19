import 'package:flutter/material.dart';
import 'dart:math' as math;

class ColorHelper {
  //convert color hash code to dart color object
  static Color? fromHash(String? hashCode) {
    if (hashCode == null) return null;
    return Color(int.parse('0xff$hashCode'));
  }

  //get if color is dark or light
  static bool isColorLight(Color? color) {
    return color == null
        ? false
        : color.computeLuminance() > 0.5
            ? false
            : true;
  }

  ///Method to get a random color
  static randomColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);

  // get darken color from candidate color
  static Color darken(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  // get light color from candidate color
  static Color lighten(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}
