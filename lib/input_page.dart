import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/icon_cinsiyet.dart';
import 'container_widget.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              kutuYap(width: 200, height: 170),
              kutuYap(width: 200, height: 170),
            ],
          ),

          kutuYap(width: 500, height: 100),
          kutuYap(width: 500, height: 100),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    seciliCinsiyet = 'KADIN';
                  });
                },
                child: IconCinsiyet(
                  color:
                      seciliCinsiyet == 'KADIN' ? Colors.grey : Colors.white,
                  text: 'KADIN',
                  icon: FontAwesomeIcons.venus,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    seciliCinsiyet = 'ERKEK';
                  });
                },
                child: IconCinsiyet(
                  color:
                      seciliCinsiyet == 'ERKEK' ? Colors.grey : Colors.white,
                  text: 'ERKEK',
                  icon: FontAwesomeIcons.mars,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
