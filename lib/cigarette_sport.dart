import 'package:flutter/material.dart';
import 'package:life_expectancy/constans.dart';
import 'package:life_expectancy/container_widget.dart';
import 'package:life_expectancy/life.dart';

class SigaraSpor extends StatefulWidget {
  final Life life;

  const SigaraSpor({super.key, required this.life});

  @override
  State<SigaraSpor> createState() => _SigaraSporState();
}

class _SigaraSporState extends State<SigaraSpor> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Container(
          child: MakeBox(
            width: size.width * 0.95,
            height: size.height * 0.178,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customText(
                  text: 'HAFTADA KAÇ GÜN SPOR YAPIYORSUN ?',
                  Color: Colors.black54,
                  fontSize: 20,
                ),
                customText(text: '${widget.life.sport.round()}'),
                Slider(
                  min: 0,
                  max: 7,
                  value: widget.life.sport,
                  onChanged: (double newValue) {
                    setState(() {
                      widget.life.sport = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          child: MakeBox(
            width: size.width * 0.95,
            height: size.height * 0.178,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customText(
                  text: 'GÜNDE KAÇ SİGARA İÇİYORSUNUZ ?',
                  Color: Colors.black54,
                  fontSize: 20,
                ),
                customText(text: '${widget.life.cigarette.round()}'),
                Slider(
                  min: 0,
                  max: 30,
                  value: widget.life.cigarette,
                  onChanged: (double newValue) {
                    setState(() {
                      widget.life.cigarette = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
