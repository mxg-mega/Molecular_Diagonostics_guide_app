import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/*
 * This Screen displays the protocol used in the viral nucleic acid extraction using RunMei extraction kit.
*/

class RunMeiProtocolScreen extends StatelessWidget {
  RunMeiProtocolScreen({super.key});

  final List<String> sectionI = [
    " 1. Animal and plant tissues: The samples are sufficiently ground with physiological saline or PBS buffer, and the supernatant is centrifuged to perform the sample extraction operation.",
    " 2. Serum, plasma, body fluid and other samples: The samples extraction can be performed directly (less than 200μl, PBS buffer or physiological saline can be added to make up 200μl).",
  ];
  final List<String> sectionII = [
    " 1. Take 200μl of plasma, serum, ascites, cell culture supernatant, cerebrospinal fluid, tissue milled supernatant and other liquids (do not use whole blood), place in a clean 1.5mL centrifuge tube, add 200μl Lysis Solution to the centrifuge tube, vortex and shake for 10s.",
    " 2. Let stand for 10 minutes at room temperature, then add 200μl of absolute ethanol to the centrifuge tube, vortex and shake for 10s.",
    " 3. Put the Adsorption Column into the Collection Tube, transfer all the above liquid into the Adsorption Column, centrifuge at 8000rpm for 1 minute, and discard the filtrate.",
    " 4. Add 600μl of Washing Buffer I to the Adsorption Column (confirm that absolute ethanol was added to Washing Solution I before use), and centrifuge at 8000rpm for 1 minute, and discard the filtrate.",
    " 5. Add 600μl of Washing Buffer II to the Adsorption Column(confirm that absolute ethanol was added to Washing Solution II before use), centrifuge at 8000rpm for 1 minute, and discard the filtrate.",
    " 6. Return the Adsorption Column to the collection tube and centrifuge at 8000rpm for 2 minutes, discard the filtrate and the collection tube.",
    " 7. Place the Adsorption Column in a RNase/DNase-free 1.5ml centrifuge tube, add 50μl Elution Solution in the center of the Adsorption Column membrane, and leave it at room temperature for 1 minute. Centrifuge at 8000rpm for 1 minute, discard the Adsorption Column. The nucleic acid are collected in the 1.5 ml centrifuge tube was stored at -20°C.",
  ];

  final double paddingSize = 16.0, headingTextSize = 24.0;
  final double subHeadingMargin = 16.0, instructionTextMargin = 8.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Run Mei DNA/RNA Extraction",
      content: SingleChildScrollView(
        padding: EdgeInsets.all(paddingSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "AddPrep Viral Nucleic Acid Extraction Kit",
              style: TextStyle(
                fontSize: headingTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: subHeadingMargin,
            ),
            InstructionSections(
              "SAMPLE PREPARATION",
              sectionI,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "INSTRUCTIONS",
              sectionII,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
          ],
        ),
      ),
    );
  }
}
