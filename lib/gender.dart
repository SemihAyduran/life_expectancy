import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/icon_gender.dart';
import 'package:life_expectancy/life.dart';

class Gender extends StatefulWidget {
  const Gender({super.key, required this.semih});

  final Life semih;
  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.semih.gender = Genders.male;
                });
              },
              child: IconGender(
                color:
                    widget.semih.gender == Genders.male
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
                  widget.semih.gender = Genders.female;
                });
              },
              child: IconGender(
                color:
                    widget.semih.gender == Genders.female
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
