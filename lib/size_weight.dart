import 'package:flutter/material.dart';
import 'package:life_expectancy/constans.dart';
import 'package:life_expectancy/container_widget.dart';
import 'package:life_expectancy/life.dart';
import 'dart:async';

class SizeWeight extends StatefulWidget {
  final Life life;
  final bool isSize;

  const SizeWeight({super.key, required this.life, required this.isSize});

  @override
  State<SizeWeight> createState() => _SizeWeightState();
}

class _SizeWeightState extends State<SizeWeight> {
  Timer? _timer;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Expanded(
      child: MakeBox(
        width: size.width * 0.5,
        height: size.height * 0.18,
        child: Row(
          children: [
            RotatedBox(
              quarterTurns: -1,
              child: customText(
                text: widget.isSize == true ? 'BOY' : 'KİLO',
                Color: Colors.black54,
              ),
            ),
            RotatedBox(
              quarterTurns: -1,
              child: customText(
                text:
                    widget.isSize == true
                        ? '${widget.life.size}'
                        : '${widget.life.weight}',
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTapDown: (_) {
                    _timer = Timer.periodic(Duration(milliseconds: 50), (
                      timer,
                    ) {
                      setState(() {
                        widget.isSize == true
                            ? widget.life.size++
                            : widget.life.weight++;
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
                        widget.isSize == true
                            ? widget.life.size++
                            : widget.life.weight++;
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
                        widget.isSize == true
                            ? widget.life.size > 0
                                ? widget.life.size--
                                : null
                            : widget.life.weight > 0
                            ? widget.life.weight--
                            : null;
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
                        widget.isSize == true
                            ? widget.life.size > 0
                                ? widget.life.size--
                                : null
                            : widget.life.weight > 0
                            ? widget.life.weight--
                            : null;
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
