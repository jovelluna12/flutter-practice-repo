import 'package:flutter/material.dart';
import 'favorite_widget.dart';
import 'title_text.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TitleText(),
        FavoriteWidget(),
      ],
    );
  }
}
