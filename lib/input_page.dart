import 'package:flutter/material.dart';
import 'package:life_expectancy/boy_kilo.dart';
import 'package:life_expectancy/erkek_kadin.dart';
import 'package:life_expectancy/life.dart';
import 'package:life_expectancy/result_page.dart';
import 'package:life_expectancy/sigara_spor.dart';
import 'constans.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Life olusturulanSemih = Life();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: customText(
          text: 'YAŞAM BEKLENTİSİ',
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          BoyKilo(semih: olusturulanSemih,),
          SigaraSpor(semih: olusturulanSemih,),
          ErkekKadin(semih: olusturulanSemih,),
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
                        MaterialPageRoute(builder: (context) => ResultPage(semih: olusturulanSemih,)),
                      );
                    },
                    child: customText(
                      fontSize: 25,
                      text: 'HESAPLA',
                    ),
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
