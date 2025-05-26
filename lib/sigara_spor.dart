import 'package:flutter/material.dart';
import 'package:life_expectancy/constans.dart';
import 'package:life_expectancy/container_widget.dart';
import 'package:life_expectancy/life.dart';

class SigaraSpor extends StatefulWidget {
  final Life semih;

  const SigaraSpor({super.key, required this.semih});

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
          child: kutuYap(
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
                customText(text: '${widget.semih.yapilanSpor.round()}'),
                Slider(
                  min: 0,
                  max: 7,
                  value: widget.semih.yapilanSpor,
                  onChanged: (double newValue) {
                    setState(() {
                      widget.semih.yapilanSpor = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          child: kutuYap(
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
                customText(text: '${widget.semih.icilenSigara.round()}'),
                Slider(
                  min: 0,
                  max: 30,
                  value: widget.semih.icilenSigara,
                  onChanged: (double newValue) {
                    setState(() {
                      widget.semih.icilenSigara = newValue;
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
