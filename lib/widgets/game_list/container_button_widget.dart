
import 'package:flutter/material.dart';
import 'package:torrent_igruha/widgets/main_screen_widget.dart';

class ContainerButtonWidget extends StatelessWidget {
  final String text;
  final double value;
  final int colorName;

  const ContainerButtonWidget({super.key, required this.text,  this.value = 0, required this.colorName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(colorName),
        borderRadius: BorderRadius.circular(value),
      ),
      height: 40,
      width: 330,
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => MainScreenWidget(),
              ),
            );
          },
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
