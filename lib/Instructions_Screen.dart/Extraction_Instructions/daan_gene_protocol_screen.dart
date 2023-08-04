import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';

/// THIS SCREEN DISPLAYS THE DaAn GENE EXTRACTION KIT PROTOCOL
/// This widget uses the sub screen template.
/// it contains a page view widget.
/// in the page view widget are two text widgets.
/// the first text widget is labeled as title widget.
/// the second text widget displays the instructions(content).

class DaAnGeneExtraction extends StatelessWidget {
  const DaAnGeneExtraction({super.key});

  final double paddingSize = 16.0,
      headingTextSize = 24.0,
      subHeadingTextSize = 20.0,
      instructionTextSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "DaAn Gene DNA/RNA Extraction",
      content: SingleChildScrollView(
        padding: EdgeInsets.all(paddingSize),
        child: Column(
          children: <Widget>[
            Text(
              "AccuPrep Universal RNA Extraction Kit (K-3140, K-3141)",
              style: TextStyle(
                fontSize: headingTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              "1. Before You Begin",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: subHeadingTextSize,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(" 1) Completely dissolve one vial of Protinase K in 1,250"),
          ],
        ),
      ),
    );
  }
}
