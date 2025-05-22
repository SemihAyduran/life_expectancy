import 'package:flutter/material.dart';
import 'package:life_expectancy/constans.dart';
import 'package:life_expectancy/input_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SONUÇ SAYFASI')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 14,
            child: Center(child: customText(color: Colors.black54, fontSize: 25, text: 'Beklenen Yaşam Süresi'))),
          Expanded(flex: 1,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
              child: customText(
                color: Colors.black54,
                fontSize: 25,
                text: 'GERİ DÖN',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
