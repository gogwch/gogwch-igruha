import 'package:flutter/material.dart';
import 'package:torrent_igruha/widgets/theme_provider_widget.dart';

class ThemeManagerWidget extends StatefulWidget {
  final Widget child;

  const ThemeManagerWidget({super.key, required this.child});

  @override
  State<ThemeManagerWidget> createState() => _ThemeManagerWidgetState();
}

class _ThemeManagerWidgetState extends State<ThemeManagerWidget> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProviderWidget(
      mode: _themeMode,
      onThemeChanged: (newMode) {
        setState(() {
          _themeMode = newMode;
        });
      },
      child: widget.child,
    );
  }
}
