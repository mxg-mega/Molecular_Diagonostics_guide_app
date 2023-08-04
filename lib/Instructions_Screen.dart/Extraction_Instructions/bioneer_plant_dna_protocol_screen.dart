import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/// THIS SCREEN DISPLAYS THE BIONEER EXTRACTION KIT PROTOCOL
/// This widget uses the sub screen template.
/// it contains a page view widget.
/// in the page view widget are two text widgets.
/// the first text widget is labeled as title widget.
/// the second text widget displays the instructions(content).

class BioneerPlantTDNAProtocolScreen extends StatelessWidget {
  BioneerPlantTDNAProtocolScreen({super.key});

  /// section I represents the texts under Before You Begin.
  final List<String> sectionI = [
    " 1) Completely dissolve one vial of Proteinase K in 1,250 μl of nuclease free water. For short term storage, dissolved Proteinase K should be stored at 4°C. For long term storage, it is recommended to aliquot the enzyme into separate tubes and store at -20°C.",
    " 2) Completely dissolve one vial of RNase A in 600 µl of nuclease-free water. For short term storage, dissolved RNase A should be stored at 4°C For long term storage, it is recommended to aliquot the enzyme into separate tubes and store at-20°C.",
    " 3) Add correct amount of absolute ethanol to WA1 Buffer. 4) Before starting extraction process, heat the EA Buffer at 56-60°C.",
  ];

  /// Experimental Protocol
  final List<String> sectionII = [
    " 1) Grind-100 mg of plant to fine powder. Put the powder and 300 µl of PL Buffer in a 15 ml or 2 ml tube. Powdered plants are efficient for lysis.",
    " 2) Add 20 µl of Proteinase K and 10 µl of RNase A. Mix thoroughly and make sure that you completely resuspend the sample to achieve maximum lysis efficiency.",
    " 3) Incubate the tube at 60°C for 10 min.",
    " 4) Add 100 µl of PC Buffer and mix thoroughly.",
    " 5) Incubate for 5 min on ice. This step precipitates detergent, proteins and polysaccharides.",
    " 6) After 5 min, centrifuge the tube at 13,000 rpm for 5 min then transfer the supernatant to a new tube.",
    "\t(Option) If plant tissue remains in the supernatant, centrifuge once again.",
    " 7) Add 1.5 sample volumes of WA1 Buffer to the cleared lysate and mix well using a vortex mixer or by pipetting. And then spin down for 10 sec to get the liquid clinging to the walls and lid of the tube.",
    " 8) Carefully transfer the lysate into the upper reservoir of the Binding column tube (fit in a collection tube) without wetting the rim.",
    " 9) Close the tube and centrifuge at 8,000 rpm for 1 min.",
    "\t(Option) If the liquid has not completely passed the column following centrifugation, then centrifuge again until the liquid completely passes through.",
    " 10) Discard the solution from the collection tube and reuse the collection tube.",
    " 11) Repeat step 8-10 with remaining sample.",
    " 12) Add 500 µl of W2 Buffer to the column, close the lid, and centrifuge at 8,000 rpm for 1 min.",
    " 13) Discard the solution from the collection tube and reuse the collection tube.",
    " 14) Add 500 µl of W2 Buffer, close the lid, and centrifuge at 8,000 rpm for 1 min.",
    " 15) Discard the solution from the collection tube and reuse the collection tube.",
    " 16) Centrifuge once more at 13,000 rpm for 1 min to completely remove ethanol and check that there is no droplet clinging to the bottom of Binding column tube.",
    "\t(Caution) Make sure that there is no droplet hanging from the bottom of the Binding column. Residual W2 Buffer left in the Binding column may cause problems in later applications.",
    " 17) Transfer the Binding column tube to 1.5 ml tube for elution, add 50-200 μl of EA Buffer onto Binding column tube, and wait for at least 1 min.",
    "\t(Option) We recommend letting stand for about 5 min to increase DNA yield. You can also increase yield by heating the EA Buffer at about 60°C before adding to the column.",
    " 18) Centrifuge at 8,000 rpm for 1 min to elute.",
  ];
  final double paddingSize = 16.0, headingTextSize = 24.0;
  final double subHeadingMargin = 16.0, instructionTextMargin = 8.0;

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Bioneer DNA Extraction",
      content: SingleChildScrollView(
        padding: EdgeInsets.all(paddingSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "AccuPrep® Plant Genomic DNA Extraction Kit (K-3031)",
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
              "II. Experimental Protocol",
              sectionII,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Center(
              child: Text(
                  "For more information visit www.bioneer.com and refer to the users guide of this Kit."),
            ),
          ],
        ),
      ),
    );
  }
}
