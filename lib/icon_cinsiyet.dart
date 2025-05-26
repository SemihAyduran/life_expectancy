import 'package:flutter/material.dart';
import 'package:life_expectancy/container_widget.dart';

class IconCinsiyet extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? color;

  const IconCinsiyet({
    super.key,
    required this.text,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return kutuYap(
      color: color,
      width: size.width * 0.445,
      height: size.height * 0.19,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          Icon(icon, size: 50, color: Colors.black54),
          Text(
            text,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
