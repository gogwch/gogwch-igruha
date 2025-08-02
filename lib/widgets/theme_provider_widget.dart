import 'package:flutter/material.dart';

class ThemeProviderWidget extends InheritedWidget {
  final ThemeMode mode;
  final void Function(ThemeMode) onThemeChanged;

  const ThemeProviderWidget({
    required super.child, required this.mode, required this.onThemeChanged, super.key,
  });

  static ThemeProviderWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProviderWidget>()!;
  }

  @override
  bool updateShouldNotify(ThemeProviderWidget oldWidget) {
    return mode != oldWidget.mode;
  }
}
