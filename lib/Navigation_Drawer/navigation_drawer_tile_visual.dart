import 'package:flutter/material.dart';
// import 'package:referance_procedure_guide_book/protocol_screen.dart';

/*
 - This Widget will get the text to be displayed and the route it will take the user to
 - it will take the following as arguments:
    - text
    - text color
    - on tap route

  - it returns a list Tile
*/
class NavigationTileVisual extends StatelessWidget {
  const NavigationTileVisual(
    this.textColor, {
    super.key,
    required this.text,
  });

  final String text;
  final Color textColor;
  final double textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: textSize,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        });
  }
}
