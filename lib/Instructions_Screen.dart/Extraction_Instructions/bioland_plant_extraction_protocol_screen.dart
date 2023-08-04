import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/// THIS SCREEN DISPLAYS THE BIOLAND PLANT DNA EXTRACTION KIT PROTOCOL
/// This widget uses the sub screen template.
/// it contains a page view widget.
/// in the page view widget are two text widgets.
/// the first text widget is labeled as title widget.
/// the second text widget displays the instructions(content).

class BioLandPlantTDNAProtocolScreen extends StatelessWidget {
  BioLandPlantTDNAProtocolScreen({super.key});

  /// section I represents the texts under Before You Begin.
  final List<String> sectionI = [
    " 1. Collect ground plant tissue as described (start with 100 mg) in a 2.0 mL microcentrifuge tube and immediately add 600 µl Buffer PL1. Optional: Add 10 pl B-mercaptoethanol and vortex vigorously. Make sure to disperse all clumps.",
    "\tTIP: Process in sets of four to six tubes: fill all tubes with liquid nitro- gen, grind, and add Buffer PL1 and 2-mercaptoethanol; proceed to Step 2 before starting another set. As a starting point, use 100 mg tis- sue per tube. If yield and purity are satisfactory, increase to 200 mg.",
    " 2. Incubate at 65°C for 10 min. Mix sample twice during incubation by inverting tube. Optional: If necessary, add 2 μl RNase A into the lysate before incubation to remove the RNA.",
    " 3. Add 140 μl Buffer PL2 and mix well by vortexing for 10s. Centrifuge at 11,000 rpm for 10 min.",
    " 4. Carefully transfer the supernatant to a clean 2.0 mL tube. Add 0.7 volume isopropanol. Mix well by vortexing for 5s and centrifuge at 12,000 x g for 2 min to precipitate the DNA. This step removes poly- saccharides and improves DNA binding ability to the spin column.",
    " 5. Carefully decant the supernatant and discard, avoid dislodging the DNA pellet. Invert the tube on absorbance paper towel for 1 min to drain any residual ethanol. The pellet doesn't have to be dry.",
    " 6. Add 300 µl preheated (65°C) Elution Buffer and vortex for 10s to mix the DNA well. A brief incubation at 65°C may help dissolve the DNA.",
    " 7. Add 150 μl of Buffer PL3 and 300 µl 96-100% ethanol, mix well by vortexing for 5s. A precipitation may form but does not interfere with the DNA binding to the column.",
    " 8. Transfer the sample to the column and centrifuge at 11,000 rpm for 1 min. Discard the flow-through and put the column back to the collection tube.",
    " 9. Add 600 μl DNA Wash Buffer and centrifuge at 11,000 rpm for 20s. Discard the flow-through and put the column back to the collection tube. Repeat once.",
    " 10. Centrifuge the column at 11,000 rpm for 1 min. This is critical for removing residual ethanol that may interfere with downstream applications.",
    " 11. Transfer column to a clean 1.5 mL tube. Add pre-warmed (65 °C) 100 μl Elution Buffer and immediately centrifuge at 11,000 rpm for 1 min to elute DNA. Smaller volumes will significantly increase DNA concentration but give lower yields. Use of more than 200 μl of buffer for elution is not recommended.",
    " 12. Optional: Add the eluted DNA back to the column for a 2nd elution yields another 20-30% of the DNA bound. To increase DNA concentration, add Elution Buffer and incubate the column at 60 °C- 70 °C for 5 min before elution.",
  ];

  final double paddingSize = 16.0, headingTextSize = 24.0;
  final double subHeadingMargin = 16.0, instructionTextMargin = 8.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "BioLand DNA Extraction",
      content: SingleChildScrollView(
        padding: EdgeInsets.all(paddingSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "EasyPrep™ Plant Genomic DNA MiniPrep\n Catalog: GD02-01, GD02-02",
              style: TextStyle(
                fontSize: headingTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: subHeadingMargin,
            ),
            InstructionSections(
              "Protocol",
              sectionI,
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
