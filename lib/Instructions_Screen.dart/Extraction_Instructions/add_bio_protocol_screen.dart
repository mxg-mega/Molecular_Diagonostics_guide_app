import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/*
 * This Screen displays the protocol used in the viral nucleic acid extraction using ADDBIO extraction kit.
*/

class AddBioProtocolScreen extends StatelessWidget {
  AddBioProtocolScreen({super.key});

  final List<String> sectionI = [
    "1. Add ethanol to Washing 1 Solution and Washing 2 Solution before use.",
    "2. Check Lysis Solution and Washing 1 Solution for salt precipitation, and salt precipitant can be dissolved by warming at 50℃.",
    "3. Prepare β-mercaptoethanol (14.2M) and isopropanol.",
  ];
  final List<String> sectionII = [
    "1) Prepare 200 µl of sample (plasma, serum, cell-free body fluids, cell-culture supernatants, virus-infected samples) into a 1.5 ml micro-centrifuge tube (not provided): In the case of virus infected feces and cell line, transfer 20~50 mg in 1.5ml micro-centrifuge tube and dissolve with 250 µl of DW (Nuclease free) and vortex for 10~15 sec. and then centrifuge at 13,000 rpm for 30sec. Use approximately 150~200 µl of supernatant.",
    "2) Add 350 µl of Lysis Solution to the sample tube, and then add 3.5 µl β-mercaptoethanol (14.2M) and mix well by pulse-vortexing for 10~15 sec.",
    "3) Incubate at room temperature for 10 min and centrifuge at 3,000 rpm for 5 sec.",
    "4) Add 150 µl of isopropanol to lysate and mix well by pulse-vortexing for 15 sec.: After this step, briefly spin down to get the drops clinging under the lid.",
    "5) Carefully transfer the lysate into the upper reservoir of the spin column with 2.0ml collection tube without wetting the rim.",
    "6) Centrifuge at 13,000 rpm for 1 min: Pour off the flow-through and assemble the spin column with the 2.0 ml collection tube.",
    "7) Add 500 µl of Washing 1 Solution to the spin column with collection tube and centrifuge at 13,000 rpm for 1 min: Pour off the flow-through and assemble the spin column with the 2.0 ml collection tube.",
    "8) Add 500 µl of Washing 2 Solution to the spin column with collection tube and centrifuge at 13,000 rpm for 1 min: Pour off the flow-through and assemble the spin column with the 2.0 ml collection tube.",
    "9) Dry the spin column by additional centrifugation at 13,000 rpm for 1 min to remove the residual ethanol in spin column.",
    "10) Transfer the spin column to the new 1.5 ml micro-centrifuge tube (Not provided).",
    "11) Add 50 ~ 150 µl of Elution Solution to the spin column with micro-centrifuge tube, and wait for at least 1 min.",
    "12) Elute the Viral Nucleic Acid by centrifugation at 13,000 rpm for 1 min; Purified RNA/DNA can be stored at -20℃ for immediate use and stored at -70℃ for long term storage.",
  ];

  final double paddingSize = 16.0, headingTextSize = 24.0;
  final double subHeadingMargin = 16.0, instructionTextMargin = 8.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "AddBio NA Extraction",
      content: ListView(
        padding: EdgeInsets.all(paddingSize),
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
    );
  }
}
//     );
//   }
// }
