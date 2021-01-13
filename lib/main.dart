import 'package:flutter/material.dart';
import './widgets/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expenses Apps",
      home: HomePage(),
    );
  }
}
