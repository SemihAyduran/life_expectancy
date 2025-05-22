import 'package:flutter/material.dart';
import 'package:life_expectancy/constans.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SONUÇ SAYFASI')),
      body: Column(
        children: [
          Expanded(child: Text('Beklenen Yaşam Süresi')),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {},
              child: customText(
                color: Colors.black54,
                fontSize: 25,
                text: 'Geri Dön',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
