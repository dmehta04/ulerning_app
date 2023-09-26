
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.title,
     this.fontSize = 24, required this.color,
  }) : super(key: key);

  final String title;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style:  TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
