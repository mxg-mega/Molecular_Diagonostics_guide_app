import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/tile_visuals.dart';
import 'package:referance_procedure_guide_book/tile_text.dart';

class ExtractionsScreen extends StatelessWidget {
  const ExtractionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Extractions",
      content: SafeArea(
        child: ListView(
          children: [
            TileVisual(
              textWidget: const ListTileText.topicOnly(
                "DNA Extraction",
              ),
              nextRoute: () {
                Navigator.pushNamed(context, '/dna_kit');
              },
            ),
            const SizedBox(
              height: 5,
            ),
            TileVisual(
              textWidget: const ListTileText.topicOnly(
                "RNA Extraction",
              ),
              nextRoute: () {
                Navigator.pushNamed(context, '/rna_kit');
              },
            ),
            const SizedBox(
              height: 5,
            ),
            TileVisual(
              textWidget: const ListTileText.topicOnly(
                "Viral RNA/DNA Extraction",
              ),
              nextRoute: () {
                Navigator.pushNamed(context, '/viral_na_kit');
              },
            ),
          ],
        ),
      ),
    );
  }
}
