import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.lightGreen),
        scaffoldBackgroundColor: Colors.lightGreen,
        primaryColor: Colors.lightGreen,
      ),
      home: InputPage());
  }
}
