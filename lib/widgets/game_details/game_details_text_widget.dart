import 'package:flutter/material.dart';

class GameDetailsTextWidget extends StatelessWidget {
  final String text;

  const GameDetailsTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(text),
    );
  }
}
