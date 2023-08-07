import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/*
 * This Screen displays the protocol used in the viral nucleic acid extraction using ADDBIO extraction kit.
*/

class PolyacrylamideGelDNAProtocolScreen extends StatelessWidget {
  PolyacrylamideGelDNAProtocolScreen({super.key});

  final List<String> sectionI = [
    "\tNote: Minimize UV exposure time to avoid damaging the DNA. Refer to section 2.5 for more tips on agarose gel extraction.\n",
    "Take a clean scalpel to excise the DNA fragment from an agarose gel. Remove all excess agarose.",
    "Determine the weight of the gel slice and transfer it to a clean tube.",
    "For each 100 mg of agarose gel < 2% add 200 µL Buffer NTI.",
    "For gels containing > 2% agarose, double the volume of Buffer NTI.",
    "Incubate sample for 5-10 min at 50 °C. Vortex the sample briefly every 2-3 min until the gel slice is completely dissolved!",
  ];
  final List<String> sectionII = [
    "Place a NucleoSpin® Gel and PCR Clean-up Column into a Collection Tube (2 mL) and load up to 700 μL sample.",
    "Centrifuge for 30 s at 11,000 x g. Discard flow-through and place the column back into the collection tube.",
    "Load remaining sample if necessary and repeat the centrifugation step.\n",
  ];
  final List<String> sectionIII = [
    "Add 700 μL Buffer NT3 to the NucleoSpin® Gel and PCR Clean-up Column. Centrifuge for 30 s at 11,000 x g. Discard flow-through and place the column back into the collection tube.\n",
    "\tRecommended: Repeat previous washing step to minimize chaotropic salt carry-over and improve A260/A230 values.",
  ];
  final List<String> sectionIV = [
    "Centrifuge for 1 min at 11,000 x g to remove Buffer NT3 completely. Make sure the spin column does not come in contact with the flow-through while removing it from the centrifuge and the collection tube.\n",
    "\tNote: Residual ethanol from Buffer NT3 might inhibit enzymatic reactions. Total removal of ethanol can be achieved by incubating the columns for 2-5 min at 70 °C prior to elution.",
  ];
  final List<String> sectionV = [
    "Place the NucleoSpin® Gel and PCR Clean-up Column into a new 1.5 mL microcentrifuge tube (not provided). Add 15-30 μL Buffer NE and incubate at room temperature (18-25 °C) for 1 min. Centrifuge for 1 min at 11,000 x g.\n",
    "\tNote: DNA recovery of larger fragments (> 1000 bp) can be increased by multiple elution steps with fresh buffer, heating to 70 °C and incubation for 5 min. See section 2.6 for detailed information.",
  ];

  final double paddingSize = 16.0,
      headingTextSize = 24.0,
      instructionTextSize = 16.0;
  final double subHeadingMargin = 16.0, instructionTextMargin = 8.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Agarose Gel DNA Extraction",
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
              "DNA extraction from agarose gels",
              style: TextStyle(
                fontSize: headingTextSize - 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: subHeadingMargin - 2,
            ),
            Text(
              "\tThe following protocol is suitable for PCR clean-up as well as DNA concentration and removal of salts, enzymes, etc. from enzymatic reactions (SDS <0.1%).",
              style: TextStyle(
                fontSize: instructionTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: subHeadingMargin,
            ),
            InstructionSections(
              "I. DNA fragment/solubilize gel slice",
              sectionI,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "II. Bind DNA",
              sectionII,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "III. Wash silica membrane",
              sectionIII,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "IV. Dry silica membrane",
              sectionIV,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "V. Elute DNA",
              sectionV,
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
