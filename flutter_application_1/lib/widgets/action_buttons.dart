import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButton(Icons.call, 'CALL'),
        _buildButton(Icons.directions, 'ROUTE'),
        _buildButton(Icons.share, 'SHARE'),
      ],
    );
  }

  ElevatedButton _buildButton(IconData icon, String label) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      ),
      child: Column(
        spacing: 12.0,
        children: [Icon(icon), Text(label)],
      ),
    );
  }
}
