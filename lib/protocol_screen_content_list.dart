import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/tile_visuals.dart';
import 'package:referance_procedure_guide_book/tile_text.dart';

class ProtocolScreenContentList extends StatelessWidget {
  const ProtocolScreenContentList({super.key});

  final double borderSize = 8.0;

  @override
  Widget build(context) {
    return ListView(
      children: <Widget>[
        TileVisual(
          textWidget: ListTileText(
            topicText: "Extraction",
            "Types of extraction including DNA and RNA based on Sample types and Kits",
          ),
          nextRoute: () {
            Navigator.pushNamed(context, '/extraction');
          },
        ),
        const SizedBox(
          height: 5.0,
        ),
        TileVisual(
          textWidget: ListTileText(
            topicText: "PCR (Polymerase Chain Reaction)",
            "Types of PCR base on number of primer, Template and Kit",
          ),
          nextRoute: () {
            Navigator.pushNamed(context, '/pcr');
          },
        ),
      ],
    );
  }
}
