import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/*
 * This Screen displays the protocol used in the viral nucleic acid extraction using ADDBIO extraction kit.
*/

class AgaroseGelRNAProtocolScreen extends StatelessWidget {
  AgaroseGelRNAProtocolScreen({super.key});

  final List<String> sectionI = [
    "\tNote: Minimize UV exposure time to avoid damaging the RNA.\n",
    "Take a clean scalpel to excise the RNA fragment from an agarose gel. Remove all excess agarose.",
    "Determine the weight of the gel slice and transfer it to a clean tube.",
    "For each 100 mg of agarose gel < 2% add 200 µL Buffer NTC.",
    "For gels containing > 2% agarose, double the volume of Buffer NTC.",
    "Incubate sample for 5-10 min at 50 °C. Vortex the sample briefly every 2-3 min until the gel slice is completely dissolved!",
  ];
  final List<String> sectionII = [
    "Continue to step 2 of the protocol of DNA extraction from agarose gel",
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
              "RNA extraction from agarose gels",
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
              "I. Excise RNA fragment/solubilize gel slice",
              sectionI,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "II. Bind RNA",
              sectionII,
            ),
          ],
        ),
      ),
    );
  }
}
