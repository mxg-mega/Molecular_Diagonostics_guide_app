import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/tile_visuals.dart';
import 'package:referance_procedure_guide_book/tile_text.dart';

/*
 This Screen offers the variety of DNA kits used in the
 protocol chosen and as such it takes the use to the
 instruction/protocol page of the specified kit.
 */
class DNAKitSelectionScreen extends StatelessWidget {
  const DNAKitSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "DNA Kit Selection",
      content: ListView(
        children: [
          TileVisual(
            textWidget: ListTileText.topicOnly("Bioneer"),
            nextRoute: () {
              Navigator.pushNamed(context, '/bioneer_sample');
            },
          ),
          TileVisual(
            textWidget: ListTileText.topicOnly("DaAn Gene"),
            nextRoute: () {
              Navigator.pushNamed(context, '/daan_gene_extraction_protocol');
            },
          ),
          TileVisual(
            textWidget: ListTileText.topicOnly("Zymo Research"),
            nextRoute: () {
              Navigator.pushNamed(context, '/zymo_sample');
            },
          ),
          TileVisual(
            textWidget: ListTileText(
              topicText: "BioLand",
              "Only Plant Extraction Protocol",
            ),
            nextRoute: () {
              Navigator.pushNamed(context, '/bioland_plant_dna_extraction');
            },
          ),
        ],
      ),
    );
  }
}
