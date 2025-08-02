import 'package:flutter/material.dart';
import 'package:torrent_igruha/resources/image.dart';

class LohWidget extends StatelessWidget {
  const LohWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SizedBox.expand(
        child: Image.asset(GameImages.lox),
      ),
    );
  }
}
