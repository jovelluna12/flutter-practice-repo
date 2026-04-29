import 'package:flutter/material.dart';

class TodoDetails extends StatelessWidget {
  final String title;
  final String description;

  const TodoDetails({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(child: Text(description)),
      ),
    );
  }
}
