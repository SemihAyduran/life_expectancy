import 'package:flutter/material.dart';

Widget customText({
  Color = Colors.blue,
  double fontSize = 25,
  FontWeight fontWeight = FontWeight.bold,
  required String text,
}) {
  return Text(
    text,
    style: TextStyle(color: Color, fontSize: fontSize, fontWeight: fontWeight),
  );
}
