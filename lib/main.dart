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
        appBarTheme: AppBarTheme(color: Colors.lightBlue[100]),
        scaffoldBackgroundColor: Colors.lightBlue[100],
        primaryColor: Colors.lightGreen,
      ),
      home: InputPage());
  }
}

