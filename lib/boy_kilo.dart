import 'package:flutter/material.dart';
import 'package:life_expectancy/constans.dart';
import 'package:life_expectancy/container_widget.dart';
import 'package:life_expectancy/life.dart';
import 'dart:async';

class BoyKilo extends StatefulWidget {
  final Life semih;
  final bool boyMu;

  const BoyKilo({super.key, required this.semih, required this.boyMu});

  @override
  State<BoyKilo> createState() => _BoyKiloState();
}

class _BoyKiloState extends State<BoyKilo> {
  Timer? _timer;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Expanded(
      child: kutuYap(
        width: size.width * 0.5,
        height: size.height * 0.18,
        child: Row(
          children: [
            RotatedBox(
              quarterTurns: -1,
              child: customText(
                text: widget.boyMu == true ? 'BOY' : 'KİLO',
                Color: Colors.black54,
              ),
            ),
            RotatedBox(
              quarterTurns: -1,
              child: customText(
                text:
                    widget.boyMu == true
                        ? '${widget.semih.boy}'
                        : '${widget.semih.kilo}',
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTapDown: (_) {
                    _timer = Timer.periodic(Duration(milliseconds: 5), (timer) {
                      setState(() {
                        widget.boyMu == true
                            ? widget.semih.boy++
                            : widget.semih.kilo++;
                      });
                    });
                  },
                  onTapUp: (_) {
                    _timer?.cancel();
                  },
                  onTapCancel: () {
                    _timer?.cancel();
                  },
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        widget.boyMu == true
                            ? widget.semih.boy++
                            : widget.semih.kilo++;
                      });
                    },
                    child: Icon(Icons.add, size: 30),
                  ),
                ),
                GestureDetector(
                  onTapDown: (_) {
                    _timer = Timer.periodic(Duration(milliseconds: 50), (
                      timer,
                    ) {
                      setState(() {
                        widget.boyMu == true
                            ? widget.semih.boy--
                            : widget.semih.kilo--;
                      });
                    });
                  },
                  onTapUp: (_) {
                    _timer?.cancel();
                  },
                  onTapCancel: () {
                    _timer?.cancel();
                  },
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        widget.boyMu == true
                            ? widget.semih.boy--
                            : widget.semih.kilo--;
                      });
                    },
                    child: Icon(Icons.remove, size: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
