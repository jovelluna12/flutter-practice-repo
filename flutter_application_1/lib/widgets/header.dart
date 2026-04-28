import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;

  const Header({super.key, this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(child: Text('Home')),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
