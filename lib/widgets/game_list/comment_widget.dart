import 'package:flutter/material.dart';

import '../mode_colors_widget.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget(
      {super.key, required this.name, required this.comment, required this.date, required this.like});

  final String name;
  final String comment;
  final String date;
  final String like;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.account_box, size: 68),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 15,
                        color: ModeColors.number2(context),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Icon(Icons.keyboard_arrow_right, size: 16, color: ModeColors.arrow(context)),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        comment,
                        style: const TextStyle(fontSize: 14),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite_border, size: 20, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      like,
                      style: TextStyle(
                        fontSize: 18,
                        color: ModeColors.number2(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
