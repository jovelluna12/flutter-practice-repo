import 'package:flutter/material.dart';
import 'pages/page2.dart';
import 'widgets/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      home: Scaffold(
        appBar: Header(),
        body: Page2(),
      ),
    );
  }
}
