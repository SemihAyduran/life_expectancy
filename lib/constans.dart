import 'package:flutter/material.dart';


Widget customText({
  required Color color,
  required double fontSize,
  FontWeight fontWeight = FontWeight.bold,
  required String text,
}) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
  );
}