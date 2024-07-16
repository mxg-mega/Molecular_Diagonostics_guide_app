import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/tile_visuals.dart';
import 'package:referance_procedure_guide_book/tile_text.dart';

/*
 This Screen offers the variety of DNA kits used in the
 protocol chosen and as such it takes the use to the
 instruction/protocol page of the specified kit.
 */
class PCRCleanUpSelectionScreen extends StatelessWidget {
  const PCRCleanUpSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "PCR Clean up Selection",
      content: ListView(
        children: [
          TileVisual(
            textWidget: ListTileText.topicOnly("PCR Clean-up"),
            nextRoute: () {
              Navigator.pushNamed(context, '/pcr_cleanup_protocol');
            },
          ),
          TileVisual(
            textWidget: ListTileText.topicOnly("DNA Extraction from Agarose Gel"),
            nextRoute: () {
              Navigator.pushNamed(context, '/agarose_dna_ectraction');
            },
          ),
          TileVisual(
            textWidget: ListTileText.topicOnly("DNA Extraction from Polyacrylamide Gel"),
            nextRoute: () {
              Navigator.pushNamed(context, '/agarose_rna_extraction');
            },
          ),
        ],
      ),
    );
  }
}
