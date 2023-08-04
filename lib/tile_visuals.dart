import 'package:flutter/material.dart';

class TileVisual extends StatelessWidget {
  const TileVisual({
    super.key,
    required this.textWidget,
    required this.nextRoute,
  });

  final Widget textWidget;
  final void Function() nextRoute;

  final double containerHeight = 70.0;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: containerHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: const LinearGradient(
            colors: [
              Colors.black,
              Colors.black54,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ListTile(
          tileColor: Colors.transparent,
          title: textWidget,
          onTap: nextRoute,
        ),
      ),
    );
  }
}
