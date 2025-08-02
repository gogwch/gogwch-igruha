import 'package:flutter/material.dart';
import 'package:torrent_igruha/widgets/mode_colors_widget.dart';

class VoteItemLine extends StatelessWidget {
  const VoteItemLine({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(height: 2.0, color: ModeColors.line(context), width: 283),
        ),
      ],
    );
  }
}
