import 'package:flutter/material.dart';
import 'package:life_expectancy/constans.dart';
import 'package:life_expectancy/input_page.dart';
import 'package:life_expectancy/life.dart';
import 'hesap.dart';

class ResultPage extends StatelessWidget {
  final Life semih;
  const ResultPage({super.key, required this.semih});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(text: 'SONUÇ SAYFASI', Color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          customText(text: 'BOY: ${semih.boy.toInt()}', Color: Colors.black),
          customText(text: 'KİLO: ${semih.kilo.toInt()}', Color: Colors.black),
          customText(
            text: 'SPOR: ${semih.yapilanSpor.toInt()}',
            Color: Colors.black,
          ),
          customText(
            text: 'SİGARA: ${semih.icilenSigara.toInt()}',
            Color: Colors.black,
          ),
          customText(
            text: 'CİNSİYET: ${semih.seciliCinsiyet!.name}',
            Color: Colors.black,
          ),
          customText(
            text:
                'Beklenen Yaşam Süresi: ${Hesap(semih).hesaplama().toInt().toString()}',
            Color: Colors.black,
          ),
          ElevatedButton(
            child: customText(text: 'GERİ DÖN'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: customText(text: 'SIFIRLA'),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => InputPage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
