import 'package:flutter/material.dart';

class TextWithOutline extends StatelessWidget {
  final String text;
  final double fontSize;

  TextWithOutline({@required this.text, this.fontSize = 50});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Colors.black,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

}