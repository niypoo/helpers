import 'package:flutter/material.dart';
import 'dart:math' as math;

class ColorHelper {
  // candidate color
  final Color color;

  // construction
  ColorHelper(this.color);

  //convert color hash code to dart color object
  String toHash() => color.value.toRadixString(16);

  //get if color is dark or light
  bool isColorLight() => color.computeLuminance() > 0.5 ? false : true;

  // get darken color from candidate color
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  // get light color from candidate color
  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  //convert color hash code to dart color object
  static Color fromHash(String hashCode) => Color(int.parse('0xff$hashCode'));

  ///Method to get a random color
  static randomColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);
}
