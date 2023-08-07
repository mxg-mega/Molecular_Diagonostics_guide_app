import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/*
 * This Screen displays the protocol used in the viral nucleic acid extraction using ADDBIO extraction kit.
*/

class PolyacrylamideGelDNAProtocolScreen extends StatelessWidget {
  PolyacrylamideGelDNAProtocolScreen({super.key});

  final List<String> sectionI = [
    "Excise the DNA fragment with a scalpel or razor blade in a minimal amount of polyacrylamide. Weigh the gel slice and transfer it to a 1.5 ml microcentrifuge tube (not provided).",
  ];
  final List<String> sectionII = [
    "Crush the gel slice using a disposable tip with a melted end to resemble a pestle for the microcentrifuge tube \"mortar\". The smaller the pieces, the better the DNA recovery.",
  ];
  final List<String> sectionIII = [
    "Add 200 µL of diffusion buffer to each 100 mg of crushed gel. Make sure that all gel pieces are submerged in diffusion buffer.",
    "Incubate for 30-60 min at 50 °C or over night at 37°C.",
  ];
  final List<String> sectionIV = [
    "Centrifuge for 1 min at 14,000 x g to pellet the polyacryl- amide and transfer the supernatant to a new microcentri- fuge tube (not provided).",
    "Alternatively, transfer the mixture to a NucleoSpin® Gel and PCR Clean-up Column and centrifuge 1 min at 14,000 x g to retain the gel on the column. Keep the flow- through which contains the DNA!",
    "\tOptional: To increase the final yield, repeat step 3 and 4 and combine both supernatants or flow-throughs.",
  ];
  final List<String> sectionV = [
    "Mix 1 volume of sample with 2 volumes of Buffer NTI. (e.g., 200 µL diffusion buffer and 400 μL of Buffer NTI). Small amounts of precipitating SDS do not influence the purification. Do not remove the precipitate.",
    "Note: To obtain higher yields for small fragments < 50 bp add two volumes of ethanol or use Buffer NTC instead of Buffer NTI. Buffer NTC is not provided with the kit but can be ordered separately (see ordering information).",
  ];
  final List<String> sectionVI = [
    "Continue with step 2 of the protocol for PCR clean-up.",
  ];

  final double paddingSize = 16.0,
      headingTextSize = 24.0,
      instructionTextSize = 16.0;
  final double subHeadingMargin = 16.0, instructionTextMargin = 8.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Polyacrylamide Gel DNA Extraction",
      content: SingleChildScrollView(
        padding: EdgeInsets.all(paddingSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "NucleoSpin Gel and PCR Clean-up",
              style: TextStyle(
                fontSize: headingTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: subHeadingMargin,
            ),
            Text(
              "DNA extraction from polyacrylamide gels",
              style: TextStyle(
                fontSize: headingTextSize - 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: subHeadingMargin - 2,
            ),
            Text(
              "In polyacrylamide gels, the acrylamide monomers are covalently linked reaction. Therefore, the gel cannot be dissolved like agarose gels to extra DNA. Polyacrylamide gels are usually extracted by the \"crush and soak\" me small piece of gel is crushed and incubated in a diffusion buffer. The allowed to passively diffuse out of the gel and is then purified from the di The diffusion buffer (500 mM ammonium acetate, pH 8.0, 0.1% SDS. 10 mM magnesium acetate) is not provided with the kit.",
              style: TextStyle(
                fontSize: instructionTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: subHeadingMargin,
            ),
            InstructionSections(
              "I. Prepare Sample",
              sectionI,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "II. Crush Gel",
              sectionII,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "III. Extract DNA",
              sectionIII,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "IV. Remove Polyacrylamide",
              sectionIV,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "V. Adjust DNA Condition",
              sectionV,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "VI. Bind DNA",
              sectionVI,
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
