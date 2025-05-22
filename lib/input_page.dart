import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/icon_cinsiyet.dart';
import 'container_widget.dart';
import 'constans.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 0;
  double yapilanSpor = 0;
  int boy = 0;
  int kilo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(
          text: 'YAŞAM BEKLENTİSİ',
          color: Colors.black54,
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              kutuYap(
                child: Row(
                  children: [
                    RotatedBox(
                      quarterTurns: -1,
                      child: customText(
                        text: 'BOY',
                        color: Colors.black54,
                        fontSize: 25,
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: -1,
                      child: customText(
                        text: '$boy',
                        color: Colors.lightGreen,
                        fontSize: 35,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              boy = boy + 1;
                            });
                          },
                          child: Icon(Icons.add, size: 30),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              boy = boy - 1;
                            });
                          },
                          child: Icon(Icons.remove, size: 30),
                        ),
                      ],
                    ),
                  ],
                ),
                width: 200,
                height: 170,
              ),
              kutuYap(
                child: Row(
                  children: [
                    RotatedBox(
                      quarterTurns: -1,
                      child: customText(
                        color: Colors.black54,
                        fontSize: 25,
                        text: 'KİLO',
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: -1,
                      child: customText(
                        color: Colors.lightGreen,
                        fontSize: 35,
                        text: '$kilo',
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              kilo = kilo + 1;
                            });
                          },
                          child: Icon(Icons.add, size: 30),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              kilo = kilo - 1;
                            });
                          },
                          child: Icon(Icons.remove, size: 30),
                        ),
                      ],
                    ),
                  ],
                ),
                width: 200,
                height: 170,
              ),
            ],
          ),
          kutuYap(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customText(
                  text: 'HAFTADA KAÇ GÜN SPOR YAPIYORSUN ?',
                  color: Colors.black54,
                  fontSize: 20,
                ),
                customText(
                  text: '${yapilanSpor.round()}',
                  color: Colors.lightGreen,
                  fontSize: 35,
                ),
                Slider(
                  min: 0,
                  max: 7,
                  value: yapilanSpor,
                  onChanged: (double newValue) {
                    setState(() {
                      yapilanSpor = newValue;
                    });
                  },
                ),
              ],
            ),
            width: 500,
            height: 100,
          ),
          kutuYap(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customText(
                  text: 'GÜNDE KAÇ SİGARA İÇİYORSUNUZ ?',
                  color: Colors.black54,
                  fontSize: 20,
                ),
                customText(
                  text: '${icilenSigara.round()}',
                  color: Colors.lightGreen,
                  fontSize: 35,
                ),
                Slider(
                  min: 0,
                  max: 30,
                  value: icilenSigara,
                  onChanged: (double newValue) {
                    setState(() {
                      icilenSigara = newValue;
                    });
                  },
                ),
              ],
            ),
            width: 500,
            height: 100,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    seciliCinsiyet = 'KADIN';
                  });
                },
                child: IconCinsiyet(
                  color: seciliCinsiyet == 'KADIN' ? Colors.grey : Colors.white,
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
                  color: seciliCinsiyet == 'ERKEK' ? Colors.grey : Colors.white,
                  text: 'ERKEK',
                  icon: FontAwesomeIcons.mars,
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Expanded(
                   child: TextButton(
                                   style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                   ),
                                   onPressed: () {},
                                   child: customText(
                    color: Colors.black54,
                    fontSize: 25,
                    text: 'HESAPLA',
                                   ),
                                 ),
                 ),] 
            ),
          ),
        ],
      ),
    );
  }
}
