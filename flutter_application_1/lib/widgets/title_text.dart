import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'United Kingdom Manchester Lorem Ipsum',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          Text('Downing Street, United Kingdom'),
        ],
      ),
    );
  }
}
