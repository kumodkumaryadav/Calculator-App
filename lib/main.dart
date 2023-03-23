import 'package:flutter/material.dart';

import 'calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Calculator",
      home: Home(),
      // highContrastDarkTheme: ThemeData.dark(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        color: Colors.red,
        child: SimpleCalculator(),
      ),
    );
  }
}
