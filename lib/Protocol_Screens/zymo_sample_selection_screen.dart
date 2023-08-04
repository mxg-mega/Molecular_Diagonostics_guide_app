import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/tile_visuals.dart';
import 'package:referance_procedure_guide_book/tile_text.dart';

/*
 This Screen offers the variety of DNA kits used in the
 protocol chosen and as such it takes the use to the
 instruction/protocol page of the specified kit.
 */
class ZymoSampleSelectionScreen extends StatelessWidget {
  const ZymoSampleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Zymo Sample Selection",
      content: ListView(
        children: [
          TileVisual(
            textWidget: const ListTileText.topicOnly("Biological Fluid and Cells Sample"),
            nextRoute: () {
              Navigator.pushNamed(context, '/zymo_fluid_sample_protocol');
            },
          ),
          TileVisual(
            textWidget: const ListTileText.topicOnly("Solid Tissue Sample"),
            nextRoute: () {
              Navigator.pushNamed(context, '/zymo_solidt_sample_protocol');
            },
          ),
          TileVisual(
            textWidget: const ListTileText.topicOnly("Stool/Solid Sample"),
            nextRoute: () {
              Navigator.pushNamed(context, '/zymo_stool_sample_protocol');
            },
          ),
        ],
      ),
    );
  }
}
