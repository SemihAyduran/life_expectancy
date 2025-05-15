import 'package:flutter/material.dart';

import 'container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: kutuYap(width: 200, height: 170)),
              Expanded(child: kutuYap(width: 200, height: 170)),
            ],
          ),

          Expanded(child: kutuYap(width: 500, height: 100)),
          Expanded(child: kutuYap(width: 500, height: 100)),
          Row(
            children: [
              Expanded(child: kutuYap(width: 500, height: 170)),
              Expanded(child: kutuYap(width: 500, height: 170)),
            ],
          ),
        ],
      ),
    );
  }
}
