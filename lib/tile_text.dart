import 'package:flutter/material.dart';

class ListTileText extends StatelessWidget {
  const ListTileText(this.desText,
      {super.key, required this.topicText,});

  const ListTileText.topicOnly(this.topicText, {super.key})
    : desText = " ";

  final String topicText;
  final String desText;

  final double topicFontSize = 20.0;
  final double desFontSize = 11.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          topicText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: topicFontSize,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          desText,
          style: TextStyle(
            fontSize: desFontSize,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
