import 'package:flutter/material.dart';
class ModeColors {
  static Color appBarL(BuildContext context) => Color(0xDD000000);
  static Color appBarD(BuildContext context) => Color(0xFF222123);

  static Color title(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
         ? const Color(0xFF0194BF)
         : const Color(0xFF8BC34A);

  static Color containerOrButton(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF373F4C)
          : const Color(0xFF8BC34A);

  static Color markupOfTitle(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFFBF6C28)
          : const Color(0xFF8BC34A);

  static Color title2(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFFBEBEC0)
          : const Color(0xFF000000);

  static Color number(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFFBEBEC0)
          : const Color(0xFFFFFFFF);

  static Color number2(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF9E9E9E)
          : const Color(0xFF8BC34A);

  static Color arrow(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF505251)
          : const Color(0xFF000000);

  static Color line(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF343A46)
          : const Color(0xFFF0F0F0);
}

class ModeColorsWidget extends StatelessWidget {
  const ModeColorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
