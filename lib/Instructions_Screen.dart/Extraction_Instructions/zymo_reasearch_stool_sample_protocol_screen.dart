import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/*
 * This Screen displays the protocol used in the viral nucleic acid extraction using RunMei extraction kit.
*/

class ZymoStoolSampleProtocolScreen extends StatelessWidget {
  ZymoStoolSampleProtocolScreen({super.key});

  final List<String> sectionI = [
    "For optimal performance, add beta-mercaptoethanol (user supplied) to the Genomic Lysis Buffer to a final dilution of 0.5% (v/v) i.e., 500 μl per 100 ml.",
    " 1. Add ≤ 150 mg of fecal sample or ≤ 250 mg of soil sample to a ZR Bashing BeadTM Lysis Tube (0.1 & 0.5 mm). Add 750 μl Bashing BeadTM Buffer to the tube 1.",
    "   Note: Alteratively, add water sample2 or 50-100 mg (wet weight) fungal/bacterial cells3 that have been resuspended in up to 200 μl of water or isotonic buffer (e.g., PBS) to a ZR BashingBeadTM Lysis Tube.",
    " 2. Secure in a bead beater fitted with a 2 ml tube holder assembly and process at maximum speed for ≥ 5 minutes.",
    "   Note: Required processing time will vary depending on the device and application and therefore should be evaluated on a case by case basis. For example, processing times may be as little as 3 minutes when using high-speed cell disrupters (e.g., the portable TerraLyzerTM Sample Processor, FastPrep®-24, or similar) or as long as 20 minutes when using lower speeds (e.g., Disruptor GenieTM, or standard benchtop vortexes). See manufacturer's literature for operating information.",
    " 3. Centrifuge the ZR Bashing BeadTM Lysis Tube (0.1 & 0.5 mm) in a microcentrifuge at ≥ 10,000 × g for 1 minute.",
    " 4. Transfer up to 400 μl supernatant to a Zymo-SpinTM III-F Filter in a Collection Tube and centrifuge at 8,000 x g for 1 minute.",
  ];
  final List<String> sectionII = [
    " Add 1,200 μl of Genomic Lysis Buffer to the filtrate in the Collection Tube from Step 4. Mix well.",
  ];
  final List<String> sectionIII = [
    " Add 800 μl of Genomic Lysis Buffer and 400 μl of 95% ethanol to the filtrate in the Collection Tube from Step 4. Mix well.",
  ];
  final List<String> sectionIV = [
    " 6. Transfer 800 μl of the mixture from Step 5 to a Zymo-SpinTM IICR Column in a Collection Tube and centrifuge at 10,000 × g for 1 minute.",
    " 7. Discard the flow through from the Collection Tube and repeat Step 6.",
    " 8. Add 200 μl DNA Pre-Wash Buffer to the Zymo-Spin TM IICR Column in a new Collection Tube and centrifuge at 10,000 x g for 1 minute.",
    " 9. Add 500 μl g-DNA Wash Buffer to the Zymo-Spin TM IICR Column and centrifuge at 10,000 × g for 1 minute.",
    " 10. Transfer the Zymo-SpinTM IICR Column to a clean 1.5 ml microcentrifuge tube and add 100 μl (50 μl minimum) DNA Elution Buffer directly to the column matrix. Centrifuge at 10,000 × g for 30 seconds to elute the DNA5, 6.",
    " 11. Place a Zymo-SpinTM III-HRC Filter in a clean Collection Tube and add 600 μl Prep Solution. Centrifuge at 8,000 × g for 3 minutes.",
    " 12. Transfer the eluted DNA to a prepared Zymo-SpinTM III-HRC Filter in a clean 1.5 ml microcentrifuge tube and centrifuge at exactly 16,000 × g for 3 minutes.",
  ];

  final double paddingSize = 16.0, headingTextSize = 24.0;
  final double subHeadingMargin = 16.0, instructionTextMargin = 8.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Zymo Stool Sample DNA Extraction",
      content: SingleChildScrollView(
        padding: EdgeInsets.all(paddingSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Quick-DNA™ Fecal/Soil Microbe Miniprep Kit\n Catalog No. D6010",
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
            InstructionSections(
              "  Feces and All Non-Soil Samples ",
              sectionII,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "  Soil Samples",
              sectionIII,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "",
              sectionIV,
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
