import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/*
 * This Screen displays the protocol used in the viral nucleic acid extraction using RunMei extraction kit.
*/

class ZymoFluidSampleProtocolScreen extends StatelessWidget {
  ZymoFluidSampleProtocolScreen({super.key});

  final List<String> sectionI = [
    "",
  ];
  final List<String> sectionII = [
    " 1. Add up to 200 μl sample to a microcentrifuge tube and add:\n\t - 200 μl BioFluid & Cell Buffer (Red)\n\t - 20 μl Proteinase K",
    "\tNote: For inputs < 200 μl biological fluid, proportionally decrease BioFluid & Cell Buffer (Red), Proteinase K, and Genomic Binding Buffer.",
    " 2. Mix thoroughly and then incubate the tube at 55°C for 10 minutes.",
    " 3. Add 1 volume Genomic Binding Buffer to the digested sample. Mix thoroughly. Example: Add 420 μl Genomic Binding Buffer to the 420 μl digested sample.",
    " 4. Transfer the mixture to a Zymo-SpinTM IIC-XL Column in a Collection Tube. Centrifuge (≥ 12,000 x g) for 1 minute. Discard the Collection Tube with the flow through.",
    " 5. Add 400 μl DNA Pre-Wash Buffer to the column in a new Collection Tube and centrifuge for 1 minute. Empty the Collection Tube.",
    " 6. Add 700 μl g-DNA Wash Buffer and centrifuge for 1 minute. Empty the Collection Tube.",
    " 7. Add 200 μl g-DNA Wash Buffer and centrifuge for 1 minute. Discard the Collection Tube with the flow through.",
    " 8. To elute the DNA, transfer to a clean microcentrifuge tube. Add ≥ 50 μl DNA Elution Buffer, incubate for 5 minutes, and then centrifuge for 1 minute.",
  ];

  final double paddingSize = 16.0, headingTextSize = 24.0;
  final double subHeadingMargin = 16.0, instructionTextMargin = 8.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Zymo Fluid DNA Extraction",
      content: SingleChildScrollView(
        padding: EdgeInsets.all(paddingSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Quick-DNA™ Miniprep Plus Kit\n Catalog Nos. D4068 & D4069",
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
              "II. Extraction Protocol",
              sectionII,
            ),
            SizedBox(
              height: instructionTextMargin * 3,
            ),
            const Text(
              "For the Full instruction Manual, visit http://www.zymoresearch.com/m/D4068.",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
