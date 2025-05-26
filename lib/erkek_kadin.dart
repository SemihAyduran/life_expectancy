import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/icon_cinsiyet.dart';
import 'package:life_expectancy/life.dart';

class ErkekKadin extends StatefulWidget {
  const ErkekKadin({super.key, required this.semih});

  final Life semih;
  @override
  State<ErkekKadin> createState() => _ErkekKadinState();
}

class _ErkekKadinState extends State<ErkekKadin> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.semih.seciliCinsiyet = Genders.male;
                });
              },
              child: IconCinsiyet(
                color:
                    widget.semih.seciliCinsiyet == Genders.male
                        ? Colors.grey
                        : Colors.white,
                text: 'ERKEK',
                icon: FontAwesomeIcons.mars,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.semih.seciliCinsiyet = Genders.female;
                });
              },
              child: IconCinsiyet(
                color:
                    widget.semih.seciliCinsiyet == Genders.female
                        ? Colors.grey
                        : Colors.white,
                text: 'KADIN',
                icon: FontAwesomeIcons.venus,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
