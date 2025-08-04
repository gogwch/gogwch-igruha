import 'package:flutter/material.dart';
import 'package:torrent_igruha/widgets/main_screen_widget.dart';
import 'package:torrent_igruha/widgets/theme_manager_widget.dart';
import 'package:torrent_igruha/widgets/theme_provider_widget.dart';

import 'widgets/mode_colors_widget.dart';

void main() {
  runApp(
    ThemeManagerWidget(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = ThemeProviderWidget.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Торрент Игруха',
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(backgroundColor: ModeColors.appBarL(context), foregroundColor: Colors.white),
        textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: Colors.white)),

      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF313743),
        appBarTheme: AppBarTheme(backgroundColor: ModeColors.appBarD(context), foregroundColor: Colors.white),
        textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: Colors.white)),
      ),
      themeMode: provider.mode,
      home: const MainScreenWidget(),
    );
  }
}
