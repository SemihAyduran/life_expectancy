import 'package:flutter/material.dart';

Widget kutuYap({
  double? width,
  double? height,
  Color? color = Colors.white,
  Widget? child,
}) {
  return Container(
    margin: EdgeInsets.all(10.0),
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: child,
  );
}
