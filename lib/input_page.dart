import 'package:flutter/material.dart';
import 'package:life_expectancy/gender.dart';
import 'package:life_expectancy/size_weight.dart';
import 'package:life_expectancy/life.dart';
import 'package:life_expectancy/result_page.dart';
import 'package:life_expectancy/cigarette_sport.dart';
import 'constans.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Life life;

  @override
  void initState() {
    life = Life();
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
              SizeWeight(life: life, isSize: true),
              SizeWeight(life: life, isSize: false),
            ],
          ),
          SigaraSpor(life: life),
          Gender(life: life),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                        Colors.white,
                      ),
                    ),
                    onPressed: () async{
                      life = await 
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => ResultPage(life: life),
                        ),
                      );
                      setState(() {
                        
                      });
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
