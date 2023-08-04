import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/tile_visuals.dart';
import 'package:referance_procedure_guide_book/tile_text.dart';

/*
 This Screen offers the variety of Viral DNA/RNA Extraction kits used in the
 protocol chosen and as such it takes the use to the
 instruction/protocol page of the specified kit.
 */
class ViralNAKitSelectionScreen extends StatelessWidget {
  const ViralNAKitSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Viral NA Extraction Kit Selection",
      content: ListView(
        children: [
          TileVisual(
            textWidget: const ListTileText.topicOnly("AddBio"),
            nextRoute: () {
              Navigator.pushNamed(context,'/add_bio_extraction_protocol');
            },
          ),
          TileVisual(
            textWidget: const ListTileText.topicOnly("Run Mei"),
            nextRoute: () {
              Navigator.pushNamed(context, '/run_mei_extraction_protocol');
            },
          ),
        ],
      ),
    );
  }
}
