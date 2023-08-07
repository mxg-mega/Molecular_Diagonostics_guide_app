import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/*
 * This Screen displays the protocol used in the viral nucleic acid extraction using ADDBIO extraction kit.
*/

class DNACleanUpSDSProtocolScreen extends StatelessWidget {
  DNACleanUpSDSProtocolScreen({super.key});

  final List<String> sectionI = [
    "Mix 1 volume of sample with 5 volumes of Buffer NTB (e.g., 100 µl reaction mix with 500 μL Buffer NTB).",
    "\tNote: If SDS starts to precipitate add 1 volume of isopropanol or warm sample to 20-30 °C.",
  ];
  final List<String> sectionII = [
    "with step 2 of the protocol for PCR clean-up.",
  ];

  final double paddingSize = 16.0,
      headingTextSize = 24.0,
      instructionTextSize = 16.0;
  final double subHeadingMargin = 16.0, instructionTextMargin = 8.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "DNA Clean-up containing SDS",
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
              "DNA clean-up of samples containing SDS (Buffer NTB)",
              style: TextStyle(
                fontSize: headingTextSize - 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: subHeadingMargin - 2,
            ),
            Text(
              "\tBuffer NTI, from the NucleoSpin® Gel and PCR Clean-up kit, is compatible with most commonly used detergents with the exception sodium dodecyl sulfate (SDS). For purification of DNA from samples without SDS the standard protocol for PCR clean-up can be used (see section 5.1). For purification of DNA from SDS containing buffers, for example in applications like \"Chromatin Immunoprecipitation\" (ChIP), the SDS compatible Binding Buffer NTB can be used.",
              style: TextStyle(
                fontSize: instructionTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: subHeadingMargin,
            ),
            InstructionSections(
              "I. Adjust DNA binding condition",
              sectionI,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "II. Bind DNA",
              sectionII,
            ),
          ],
        ),
      ),
    );
  }
}
