import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';

class BioneerHotStartPCRProtocol extends StatelessWidget {
  BioneerHotStartPCRProtocol({super.key});

  final List<String> sectionI = [
    " 1. Thaw primer solutions and prepare template DNA.",
    " 2. Distribute the appropriate volume of diluted primer mix into the each AccuPower HotStart PCR PreMix",
    " 3. Add template DNA (≤ 100ng/reaction) to the individual PCR tubes.",
    " \tA negative control (without template DNA) should always be included. It is not necessary to keep PCR tubes on ice as nonspecific DNA synthesis cannot occur at room temperature due to the inactive state of Hot Start DNA Polymerase.",
    " 4. Add distilled water to AccuPower HotStart PCR PreMix tubes until the total volume of mixture becomes 20 µl.",
    " \tDissolve the lyophilized blue pellet by vortexing and spin-down.",
    " 5. When using a thermal cycler with a heated lid, do not use mineral oil. Proceed directly to step 6. Otherwise, overlay with approximately 50 µl of mineral oil.",
    " 6. Program the thermal cycler according to the manufacturer's instructions. Each PCR program is equal to Pre-denaturation step at 94°C for 5 min. A typical PCR cycling program is outlined below. For maximum yield and specificity, temperatures and cycling times should be optimized for each new template target or primer pair.",
    " 7. Place the PCR tubes in the thermal cycler and start the cycling program. \nNote: After amplification, samples can be stored overnight at 2-8°C or at -20°C for longer storage.",
    " 8. Load samples on agarose gel without adding loading dye mixture and perform electrophoresis.",
  ];

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "HotStartPCR",
      content: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "AccuPower® HotStart PCR PreMix",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "PCR Clean-up",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "\tThis protocol serves only as a guideline for PCR amplification. Optimal reaction conditions such as incubation times, temperatures, and amount of template DNA may vary and must be individually determined.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InstructionSections(
              "PCR Protocol",
              sectionI,
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
