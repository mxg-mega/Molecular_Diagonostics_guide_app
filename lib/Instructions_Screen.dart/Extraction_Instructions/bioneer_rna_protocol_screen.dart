import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/// THIS SCREEN DISPLAYS THE BIONEER RNA EXTRACTION KIT PROTOCOL
/// This widget uses the sub screen template.
/// it contains a Single Scroll view widget
/// the first text widget is labeled as title widget.
/// the second text widget displays the instructions(content).

class BioneerRNAProtocolScreen extends StatelessWidget {
  BioneerRNAProtocolScreen({super.key});

  final List<String> sectionI = [
    "1)	Add 10l β-mercaptoethanol per 1 ml RB Buffer",
    "2)	Prepare additional ethanol (80% and 100%) that is not included.",
  ];
  final List<String> sectionII = [
    " 1) Cells grown in suspension:",
    "     Count the cell number and centrifuge the cultured cells (10~10°) at 300 xg for 5 min. Discard supernatant and go to step III. RNA Extraction from Cultured Cell.",
    " 2) Cells grown in a monolayer. There are 2 different ways to collect cells grown in a monolayer.",
    "     a. Direct cell lysis from culture dish: Completely remove cell culture medium and go to step III. RNA Extraction from Cultured Cell.",
    "     b. Harvesting cells with trypsin: Remove cell culture medium and wash the monolayer with DPBS. Add 0.1%~0.25% typsin to the washed cell monolayer. When the cells are detached, add cell culture medium to inactivate typsin. Transfer the cells into a RNase-free tube and centrifuge at 300xg for 5 min. Discard supernatant carefully and go to step III. RNA Extraction from Cultured Cell.",
  ];
  final List<String> sectionIII = [
    " 1) Add 400 μl of RB Buffer to the cell pellet and mix by vortex mixer.",
    " 2) Add 300 μl of ethanol (80%) and mix immediately by using pipette.",
    " 3) Transfer the sample to a Binding column in a 2 ml collection tube.",
    " 4) Close the lid and centrifuge at ≥14,000 rpm for 20 sec.",
    " 5) Discard the flow-through from the collection tube and reuse the collection tube.",
    " 6) Add 700 μl of RWA1 Buffer without wetting the rim, close the tube, and centrifuge at 14,000 rpm for 20 sec.",
    " 7) Discard the solution from the collection tube and reuse the collection tube.",
    " 8) Add 500 μl of RWA2 Buffer without wetting the rim, close the tube, and centrifuge at 14,000 rpm for 20 sec.",
    " 9) Discard the solution from the collection tube and reuse the collection tube.",
    " 10) Add 500 μl of RWA2 Buffer without wetting the rim, close the tube, and centrifuge at 14,000 rpm for 2 min.",
    " 11) Discard the solution from the collection tube and reuse the collection tube.",
    " 12) Centrifuge once more at 14,000 rpm for 1 min to completely remove ethanol, and check that there is no droplet clinging to the bottom of binding column tube.",
    " 13) Transfer the Binding column tube to a new 1.5 ml tube for elution, add 50~200 μl of ER Buffer onto Binding column tube, and wait for at least 1 min at RT (15~25°C).",
    " 14) Centrifuge at 10,000 rpm for 1 min to elute.",
  ];
  final List<String> sectionIV = [
    " 1) Grind Sample (up to 100 mg) under liquid nitrogen. Transfer the tissue powder to an appropriately sized tube and add 500 μl of RB Buffer to a maximum of 100 mg tissue powder and vortex vigorously.",
    " 2) Incubate at 60°C for 1~3 min.",
    " 3) Centrifuge at full speed for 2 min.",
    " 4) Transfer the supernatant, aqueous phase to a new microcentrifuge tube. ",
    " 5) Add 0.5 sample volume of ethanol (96~100%) and mix immediately by using pipette.",
    " 6) Go to step 3 of \"RNA Extraction from Cultured Cell\" in page 1 and follow the instructions accordingly.",
  ];
  final List<String> sectionV = [
    " 1) Homogenize the sample (20~30 mg) with a homogenizer, place them in a new 1.5 ml tube, and add 500 μl of RB Buffer.",
    " 2) Centrifuge the lysate for 3 min at full speed, and transfer the supernatant to a new 1.5 ml tube.",
    " 3) Add 200 μl of ethanol (96~100%) and mix immediately by using pipette.",
    " 4) Go to step 3 of \"RNA Extraction from Cultured Cell\" in page 1 and follow the instructions accordingly.",
  ];

  final double paddingSize = 16.0, headingTextSize = 24.0;
  final double subHeadingMargin = 16.0, instructionTextMargin = 8.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Bioneer RNA Extraction",
      content: SingleChildScrollView(
        padding: EdgeInsets.all(paddingSize),
        child: Column(
          children: <Widget>[
            Text(
              "AccuPrep® Universal RNA Extraction Kit (K-3140, K-3141)",
              style: TextStyle(
                fontSize: headingTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: subHeadingMargin,
            ),
            InstructionSections(
              "I. Before You Begin",
              sectionI,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "II. Cultured Cell Collection",
              sectionII,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "III. RNA Extraction from Cultured Cell",
              sectionIII,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "IV. RNA Extraction from Plant Tissue",
              sectionIV,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "V. RNA Extraction from Animal Tissue",
              sectionV,
            ),
          ],
        ),
      ),
    );
  }
}
