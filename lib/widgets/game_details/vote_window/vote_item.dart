import 'package:flutter/material.dart';

class VoteItem extends StatelessWidget {
  final String name;
  final String date;
  final bool isUp;

  const VoteItem(
      {super.key, required this.name, required this.date, required this.isUp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                isUp ? Icons.arrow_upward : Icons.arrow_downward,
                color: isUp ? Colors.green : Colors.red,
                size: 18,
              ),
              SizedBox(width: 6),
              Text(
                name,
                style: TextStyle(
                  color: isUp ? Colors.green : Colors.red,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Text(
            date,
            style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
