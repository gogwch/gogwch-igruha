import 'package:flutter/material.dart';
import 'package:torrent_igruha/resources/image.dart';

class ScreenshotImageWidget extends StatelessWidget {
  const ScreenshotImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildImage(GameImages.c1),
          SizedBox(height: 10),
          _buildImage(GameImages.c2),
          SizedBox(height: 10),
          _buildImage(GameImages.c3),
          SizedBox(height: 10),
          _buildImage(GameImages.c4),
          SizedBox(height: 10),
          _buildImage(GameImages.c5),
          SizedBox(height: 10),
          _buildImage(GameImages.c6),
          SizedBox(height: 10),
          _buildImage(GameImages.c7),
          SizedBox(height: 10),
          _buildImage(GameImages.c8),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildImage(String assetPath) {
    return SizedBox(
      width: 330,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3),
        child: Image.asset(assetPath, fit: BoxFit.cover),
      ),
    );
  }
}
