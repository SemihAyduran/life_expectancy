import 'package:flutter/material.dart';
import 'package:life_expectancy/calculation.dart';
import 'package:life_expectancy/constans.dart';
import 'package:life_expectancy/life.dart';

class ResultPage extends StatelessWidget {
  final Life life;
  const ResultPage({super.key, required this.life});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(text: 'SONUÇ SAYFASI', Color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          customText(text: 'BOY: ${life.size.toInt()}', Color: Colors.black),
          customText(text: 'KİLO: ${life.weight.toInt()}', Color: Colors.black),
          customText(
            text: 'SPOR: ${life.sport.toInt()}',
            Color: Colors.black,
          ),
          customText(
            text: 'SİGARA: ${life.cigarette.toInt()}',
            Color: Colors.black,
          ),
          customText(
            text: 'CİNSİYET: ${life.gender!.name}',
            Color: Colors.black,
          ),
          customText(
            text:
                'Beklenen Yaşam Süresi: ${Calculation(life).bill().toInt().toString()}',
            Color: Colors.black,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
            child: customText(text: 'GERİ DÖN'),
          ),
          ElevatedButton(
            child: customText(text: 'SIFIRLA'),
            onPressed: () {
              Navigator.pop(
                context,
                Life());
            },
          ),
        ],
      ),
    );
  }
}
