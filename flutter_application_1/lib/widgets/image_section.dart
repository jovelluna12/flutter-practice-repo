import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/download.webp',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
