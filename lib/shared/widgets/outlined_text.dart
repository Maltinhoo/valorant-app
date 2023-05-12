import 'package:flutter/material.dart';

class OutlinedText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final Color strokeColor;
  final double strokeWidth;

  const OutlinedText(
    this.text, {
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
    this.color = Colors.black,
    this.strokeColor = Colors.white,
    this.strokeWidth = 1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              foreground: Paint()..color = color,
              fontFamily: 'Drunk Wide'),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: 'Drunk Wide',
            foreground: Paint()
              ..strokeWidth = strokeWidth
              ..color = strokeColor
              ..style = PaintingStyle.stroke,
          ),
        ),
      ],
    );
  }
}
