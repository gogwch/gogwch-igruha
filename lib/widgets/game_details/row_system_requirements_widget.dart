import 'package:flutter/material.dart';

class RowSystemRequirementsWidget extends StatelessWidget {
  final String text;
  const RowSystemRequirementsWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            softWrap: false,
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    );
  }
}
