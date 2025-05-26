import 'package:flutter/material.dart';
import 'package:life_expectancy/constans.dart';
import 'package:life_expectancy/container_widget.dart';
import 'package:life_expectancy/life.dart';
import 'dart:async';

class BoyKilo extends StatefulWidget {
  final Life semih;

  const BoyKilo({super.key, required this.semih});

  @override
  State<BoyKilo> createState() => _BoyKiloState();
}

class _BoyKiloState extends State<BoyKilo> {
  Timer? _boyTimer;
  Timer? _kiloTimer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Row(
      children: [
        Expanded(
          child: kutuYap(
            width: size.width * 0.5,
            height: size.height * 0.18,
            child: Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: customText(
                    text: 'BOY',
                    Color: Colors.black54,
                  ),
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: customText(
                    text: '${widget.semih.boy}',
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTapDown: (_) {
                        _boyTimer = Timer.periodic(Duration(milliseconds: 5), (
                          timer,
                        ) {
                          setState(() {
                            widget.semih.boy++;
                          });
                        });
                      },
                      onTapUp: (_) {
                        _boyTimer?.cancel();
                      },
                      onTapCancel: () {
                        _boyTimer?.cancel();
                      },
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            widget.semih.boy++;
                          });
                        },
                        child: Icon(Icons.add, size: 30),
                      ),
                    ),
                    GestureDetector(
                      onTapDown: (_) {
                        _boyTimer = Timer.periodic(Duration(milliseconds: 50), (
                          timer,
                        ) {
                          setState(() {
                            widget.semih.boy--;
                          });
                        });
                      },
                      onTapUp: (_) {
                        _boyTimer?.cancel();
                      },
                      onTapCancel: () {
                        _boyTimer?.cancel();
                      },
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            widget.semih.boy--;
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
        ),
        Expanded(
          child: kutuYap(
            width: size.width * 0.5,
            height: size.height * 0.18,
            child: Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: customText(
                    text: 'KİLO',
                    Color: Colors.black54,
                  ),
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: customText(
                    text: '${widget.semih.kilo}',
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTapDown: (_) {
                        _kiloTimer = Timer.periodic(Duration(milliseconds: 5), (
                          timer,
                        ) {
                          setState(() {
                            widget.semih.kilo++;
                          });
                        });
                      },
                      onTapUp: (_) {
                        _kiloTimer?.cancel();
                      },
                      onTapCancel: () {
                        _kiloTimer?.cancel();
                      },
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            widget.semih.kilo++;
                          });
                        },
                        child: Icon(Icons.add, size: 30),
                      ),
                    ),
                    GestureDetector(
                      onTapDown: (_) {
                        _kiloTimer = Timer.periodic(
                          Duration(milliseconds: 50),
                          (timer) {
                            setState(() {
                              widget.semih.kilo--;
                            });
                          },
                        );
                      },
                      onTapUp: (_) {
                        _kiloTimer?.cancel();
                      },
                      onTapCancel: () {
                        _kiloTimer?.cancel();
                      },
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            widget.semih.kilo--;
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
        ),
      ],
    );
  }
}
