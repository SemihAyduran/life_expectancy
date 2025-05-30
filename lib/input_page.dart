import 'package:flutter/material.dart';
import 'package:life_expectancy/size_weight.dart';
import 'package:life_expectancy/erkek_kadin.dart';
import 'package:life_expectancy/life.dart';
import 'package:life_expectancy/result_page.dart';
import 'package:life_expectancy/cigarette_sport.dart';
import 'constans.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Life semih;

  @override
  void initState() {
    semih = Life();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customText(text: 'YAŞAM BEKLENTİSİ', fontSize: 20),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizeWeight(semih: semih, isSize: true),
              SizeWeight(semih: semih, isSize: false),
            ],
          ),
          SigaraSpor(semih: semih),
          Gender(semih: semih),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ResultPage(semih: semih),
                        ),
                      );
                    },
                    child: customText(fontSize: 25, text: 'HESAPLA'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
