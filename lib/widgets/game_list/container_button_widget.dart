import 'package:flutter/material.dart';
import 'package:torrent_igruha/widgets/main_screen_widget.dart';

class Button {
  final String text;
  final double? roundedCornersValue;
  final Color? color;

  Button({
    required this.text,
    this.roundedCornersValue,
    this.color,
  });
}

class ContainerButtonWidget extends StatelessWidget {
  final String text;
  final double? roundedCornersValue;
  final Color? color;

  const ContainerButtonWidget({
    super.key,
    required this.roundedCornersValue,
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return _directlyButton(
      context,
      text,
      roundedCornersValue,
      color,
    );
  }

  Widget _directlyButton(
    BuildContext context,
    String text,
    double? roundedCornersValue,
    Color? color,
  ) {
    return SizedBox(
      width: 10,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Color(0xFF8BC34A),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(roundedCornersValue ?? 0), // <-- Radius
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => MainScreenWidget(),
            ),
          );
        },
        child: Text(text),
      ),
    );
  }
}
