import 'package:flutter/material.dart';
import 'package:torrent_igruha/widgets/mode_colors_widget.dart';

class MainDecorationLineWidget extends StatelessWidget {
  const MainDecorationLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
          height: 2.0, color: ModeColors.line(context), width: 370
      ),
    );
  }
}
