// Dart imports:
// ignore_for_file: avoid_classes_with_only_static_members

// Flutter imports:
import 'package:flutter/material.dart';

class AppColors {
  static Color primarySwatch = const Color(0xFFAB7CE0);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFdd1e21);
  static const Color green = Color(0xFF13c316);
  static const Color blue = Color(0xFF2196F3);
  static const Color transparent = Color(0x00000000);
  static const Color darkGrey = Color(0xFF444444);

  static const Color tomato = Color(0xFFF95F47);
  static const Color paradisePink = Color(0xFFEC505E);
  static const Color davyGrey = Color(0xFF515362);
  static const Color reaspberryPink = Color(0xFFDE519B);
  static const Color deepLavender = Color(0xFF8369AB);
  static const Color cornflowerBlue = Color(0xFF719BFB);
  static const Color albescentWhite = Color(0xFFF7E6D7);
  static const Color darkChestnut = Color(0xFF946A58);
  static const Color mountainMeadow = Color(0xFF27B586);
  static const Color lavender = Color(0xFFAB7CE0);

  static const List<Color> colors = [
    tomato,
    paradisePink,
    davyGrey,
    reaspberryPink,
    deepLavender,
    cornflowerBlue,
    albescentWhite,
    darkChestnut,
    mountainMeadow,
    lavender,
  ];
}

extension ColorsEx on Color {
  MaterialColor toMaterial() => MaterialColor(value, _getSwatch(this));

  Map<int, Color> _getSwatch(Color color) {
    final hslColor = HSLColor.fromColor(color);
    final lightness = hslColor.lightness;

    const lowDivisor = 6;
    const highDivisor = 5;

    final lowStep = (1.0 - lightness) / lowDivisor;
    final highStep = lightness / highDivisor;

    return {
      50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
      100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
      200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
      300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
      400: (hslColor.withLightness(lightness + lowStep)).toColor(),
      500: (hslColor.withLightness(lightness)).toColor(),
      600: (hslColor.withLightness(lightness - highStep)).toColor(),
      700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
      800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
      900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
    };
  }

  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}
