import 'package:flutter/material.dart';

@immutable
class ThemeSetting {
  final int id;
  final ThemeData themeData;

  static final ThemeSetting light = ThemeSetting._(
    0,
    ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white,
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: Colors.white70,
        contentTextStyle: TextStyle(color: Colors.black),
      ),
    ),
  );

  static final ThemeSetting dark = ThemeSetting._(
    1,
    ThemeData.dark().copyWith(
      snackBarTheme: SnackBarThemeData(
        backgroundColor: Colors.grey[700],
        contentTextStyle: const TextStyle(color: Colors.white70),
      ),
    ),
  );

  const ThemeSetting._(this.id, this.themeData);

  factory ThemeSetting.fromId(int id) {
    if (id == 0) {
      return light;
    }
    if (id == 1) {
      return dark;
    }
    throw UnsupportedError('Unsupported theme: $id');
  }

  @override
  bool operator ==(Object other) {
    if (other is ThemeSetting) {
      return other.id == id;
    }
    if (other is int) {
      return other == id;
    }
    return false;
  }

  @override
  int get hashCode => id.hashCode;
}
