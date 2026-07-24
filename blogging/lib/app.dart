import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'core/theme.dart';
import 'core/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.title,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: ThemeOptions.primaryColor),
      ),
      home: const MyHomePage(title: Constants.title),
    );
  }
}

