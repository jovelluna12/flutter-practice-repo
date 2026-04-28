import 'package:flutter/material.dart';
import '../widgets/title_bar.dart';
import '../widgets/image_section.dart';
import '../widgets/action_buttons.dart';
import '../widgets/text_section.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ImageSection(),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 24.0,
              children: [
                const TitleBar(),
                const ActionButtons(),
                const TextSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
