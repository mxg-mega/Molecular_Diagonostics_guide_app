import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/tile_visuals.dart';
import 'package:referance_procedure_guide_book/tile_text.dart';

/*
 This Screen offers the variety of RNA kits used in the
 protocol chosen and as such it takes the use to the
 instruction/protocol page of the specified kit.
 */
class RNAKitSelectionScreen extends StatelessWidget {
  const RNAKitSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "RNA Kit Selection",
      content: ListView(
        children: [
          TileVisual(
            textWidget: const ListTileText.topicOnly("Bioneer"),
            nextRoute: () {
              Navigator.pushNamed(context, '/bioneer_rna_extraction_protocol');
            },
          ),
          TileVisual(
            textWidget: const ListTileText.topicOnly("DaAn Gene"),
            nextRoute: () {
              Navigator.pushNamed(context, '/daan_gene_extraction_protocol');
            },
          ),
        ],
      ),
    );
  }
}
