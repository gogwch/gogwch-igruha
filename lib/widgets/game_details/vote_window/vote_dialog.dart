import 'package:flutter/material.dart';
import 'package:torrent_igruha/widgets/game_details/vote_window/vote_item_line.dart';
import 'vote_item.dart';

class VoteDialog extends StatelessWidget {
  const VoteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Статистика голосования',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(Icons.cancel, color: Colors.red),
                ),
              ],
            ),
            SizedBox(height: 8),
            VoteItemLine(),
            VoteItem(name: 'Boroda4', date: '13.05.2025', isUp: true),
            VoteItemLine(),
            VoteItem(name: 'Ponomar', date: '10.05.2025', isUp: false),
            VoteItemLine(),
            VoteItem(name: 'valeantsin', date: '08.05.2025', isUp: false),
            VoteItemLine(),
            VoteItem(name: 'Scary Mary', date: '06.05.2025', isUp: false),
            VoteItemLine(),
            VoteItem(name: 'xcholavtxa', date: '02.05.2025', isUp: true),
            VoteItemLine(),
            VoteItem(name: 'pac man', date: '29.04.2025', isUp: true),
            VoteItemLine(),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 18,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text('4', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 18,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text('2', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
