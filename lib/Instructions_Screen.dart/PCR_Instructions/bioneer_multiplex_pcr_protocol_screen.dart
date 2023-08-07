import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';

class BioneerMultiplexPCRProtocol extends StatelessWidget {
  BioneerMultiplexPCRProtocol({super.key});

  final List<String> sectionI = [
    " 1. Thaw template DNA, distilled water, and primers before use.",
    " 2. Add the template DNA and primers into AccuPower Multiplex PCR PreMix tubes.",
    " 3. Add distilled water into the AccuPower Multiplex PCR PreMix tubes to a total volume of 20 μl (K-2111, K-2113) or 50 µl (K-2112, K-2114). Do not calculate the dried pellet.",
    " 4. Dissolve the vacuum-dried green pellet completely and spin down by using Bioneer's ExiSpin Vortex/Centrifuge or by pipetting up and down several times and briefly spinning down. Perform the reaction under the following conditions.",
    " \t1) If some bands are missing, lower annealing temperature in 2-5°C steps. If non-specific bands exist, increase annealing temperature in 2-5°C steps.",
    " \t2) The number of cycles is dependent on the amount of template DNA.",
    " 6. Maintain the reaction mixture at 4 °C after amplification. The sample can be stored at -20 °C until use.",
    " 7. Load 5 μl of the reaction mixture directly on agarose gel without adding a loading dye to analyze the PCR products.",
  ];

  @override
  Widget build(BuildContext context) {
    return SubScreenTemplate(
      screenTitle: "Multiplex PCR",
      content: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "AccuPower® MultiplexPCR PreMix",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "PCR Clean-up",
              style: TextStyle(
                fontSize: 20 - 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12 - 2,
            ),
            Text(
              "\tThis protocol serves only as a guideline for PCR amplification. Optimal reaction conditions such as incubation times, temperatures, and amount of template DNA may vary and must be individually determined.",
              style: TextStyle(
                fontSize: 8,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            InstructionSections(
              "PCR Protocol",
              sectionI,
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
