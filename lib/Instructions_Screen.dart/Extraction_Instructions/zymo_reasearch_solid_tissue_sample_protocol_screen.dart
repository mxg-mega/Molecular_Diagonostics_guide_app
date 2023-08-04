import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/*
 * This Screen displays the protocol used in the viral nucleic acid extraction using RunMei extraction kit.
*/

class ZymoSolidTSampleProtocolScreen extends StatelessWidget {
  ZymoSolidTSampleProtocolScreen({super.key});

  final List<String> sectionI = [];
  final List<String> sectionII = [
    " 1. To a tissue sample (≤ 25 mg) in a microcentrifuge tube, add a solution of:\n\t - 95 μl Water\n\t - 95 μl Solid Tissue Buffer (Blue)\n\t - 10 μl Proteinase K",
    " 2. Mix thoroughly and then incubate the tube at 55°C for 1-3 hours or until tissue solubilizes. Mix thoroughly.",
    "\tNote: To remove insoluble debris, pellet by centrifugation at ≥ 12,000 × g for 1 minute. Transfer aqueous supernatant to a clean tube.",
    " 3. Add 2 volumes Genomic Binding Buffer to the supernatant. Mix thoroughly.\n Example: Add 400 μl Genomic Binding Buffer to the 200 μl supernatant.",
    " 4. Transfer the mixture to a Zymo-Spin™ IIC-XL Column in a Collection Tube. Centrifuge (≥ 12,000 x g) for 1 minute. Discard the Collection Tube with the flow through.",
    " 5. Add 400 μl DNA Pre-Wash Buffer to the column in a new Collection Tube and centrifuge for 1 minute. Empty the Collection Tube.",
    " 6. Add 700 μl g-DNA Wash Buffer and centrifuge for 1 minute. Empty the Collection Tube.",
    " 7. Add 200 μl g-DNA Wash Buffer and centrifuge for 1 minute. Discard the Collection Tube with the flow through",
    " 8. To elute the DNA, transfer to a clean microcentrifuge tube. Add ≥ 50 μl DNA Elution Buffer, incubate for 5 minutes, and then centrifuge for 1 minute.",
  ];

  final double paddingSize = 16.0, headingTextSize = 24.0;
  final double subHeadingMargin = 16.0, instructionTextMargin = 8.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Zymo Solid Tissue DNA Extraction",
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
              height: instructionTextMargin,
            ),
          ],
        ),
      ),
    );
  }
}
