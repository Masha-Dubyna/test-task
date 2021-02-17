import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:testapp/textWithOutline.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.text}) : super(key: key);

  final String text;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _r = 255;
  int _g = 255;
  int _b = 255;

  void _changeBackgroundColour() {
    setState(() {
      _r = _getRandomNumber();
      _g = _getRandomNumber();
      _b = _getRandomNumber();
    });
  }

  int _getRandomNumber() {
    return math.Random().nextInt(255);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: _changeBackgroundColour,
          ),
          Center(
            child: GestureDetector(
              onTap: _changeBackgroundColour,
              child: TextWithOutline(text: widget.text),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(_r, _g, _b, 1),
    );
  }
}