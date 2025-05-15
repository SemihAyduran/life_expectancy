import 'package:flutter/material.dart';

Widget kutuYap({double? width, double? height}) {
  return Container(
    margin: EdgeInsets.all(10.0),
    width: width,
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
    ),
  );
}
