import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/sub_screen_visual.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/instruction_section_template.dart';

/// THIS SCREEN DISPLAYS THE BIONEER EXTRACTION KIT PROTOCOL
/// This widget uses the sub screen template.
/// it contains a page view widget.
/// in the page view widget are two text widgets.
/// the first text widget is labeled as title widget.
/// the second text widget displays the instructions(content).


class BioLandPlantTDNAProtocolScreen extends StatelessWidget {
  BioLandPlantTDNAProtocolScreen({super.key});

  /// section I represents the texts under Before You Begin.
  final List<String> sectionI = [
    
  ];

  /// DNA Extraction from Whole Blood or buffy coat Sample
  final List<String> sectionII = [
    
  ];

  /// DNA Extraction from Cultured Cell Sample
  final List<String> sectionIII = [
    
  ];

  /// DNA Extraction from Animal Tissue Sample
  final List<String> sectionIV = [
    
  ];

  /// DNA Extraction from Gram-Negative Bacteria Sample
  final List<String> sectionV = [
    
  ];

  /// DNA Extraction from Gram-Positive bacteria Sample
  final List<String> sectionVI = [
    
  ];

  final double paddingSize = 16.0,
    headingTextSize = 24.0;
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
              "AccuPrep® Genomic DNA Extraction Kit (K-3032)",
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
              sectionIV,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "II. DNA Extraction from Whole Blood and Buffy Coat",
              sectionIV,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "III. DNA Extraction from Cultured Cell",
              sectionIV,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "IV. DNA Extraction from Animal Tissue",
              sectionIV,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "V. DNA Extraction from Gram-Negative Bacteria",
              sectionV,
            ),
            SizedBox(
              height: instructionTextMargin,
            ),
            InstructionSections(
              "VI. DNA Extraction from Gram-Positive Bacteria",
              sectionVI,
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

