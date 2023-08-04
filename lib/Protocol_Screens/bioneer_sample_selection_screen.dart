import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/tile_visuals.dart';
import 'package:referance_procedure_guide_book/tile_text.dart';

/*
 This Screen offers the variety of DNA kits used in the
 protocol chosen and as such it takes the use to the
 instruction/protocol page of the specified kit.
 */
class BioneerSampleSelectionScreen extends StatelessWidget {
  const BioneerSampleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Bioneer Sample Selection",
      content: ListView(
        children: [
          TileVisual(
            textWidget: const ListTileText.topicOnly("Genomic DNA Extraction Kit"),
            nextRoute: () {
              Navigator.pushNamed(context, '/bioneer_dna_extraction_protocol');
            },
          ),
          TileVisual(
            textWidget: const ListTileText.topicOnly("Plant Genomic DNA Extraction Kit"),
            nextRoute: () {
              Navigator.pushNamed(context, '/bioneer_plant_dna_extraction_protocol');
            },
          ),
        ],
      ),
    );
  }
}
