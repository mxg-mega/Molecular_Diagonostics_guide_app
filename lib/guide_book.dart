import 'package:flutter/material.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/Extraction_Instructions/add_bio_protocol_screen.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/Extraction_Instructions/bioneer_plant_dna_protocol_screen.dart';

import 'package:referance_procedure_guide_book/Instructions_Screen.dart/Extraction_Instructions/daan_gene_protocol_screen.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/Extraction_Instructions/run_mei_viral_extraction_protocol_screen.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/Extraction_Instructions/zymo_reasearch_fluid_sample_protocol_screen.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/Extraction_Instructions/zymo_reasearch_solid_tissue_sample_protocol_screen.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/Extraction_Instructions/zymo_reasearch_stool_sample_protocol_screen.dart';
import 'package:referance_procedure_guide_book/Protocol_Screens/bioneer_sample_selection_screen.dart';
import 'package:referance_procedure_guide_book/Protocol_Screens/pcr_screen.dart';
import 'package:referance_procedure_guide_book/Protocol_Screens/viral_rna_dna_kit_selection_screen.dart';
import 'package:referance_procedure_guide_book/Protocol_Screens/zymo_sample_selection_screen.dart';
import 'package:referance_procedure_guide_book/protocol_screen.dart';
import 'package:referance_procedure_guide_book/Protocol_Screens/dna_kit_selection_screen.dart';
import 'package:referance_procedure_guide_book/Protocol_Screens/rna_kit_selection_screen.dart';
import 'package:referance_procedure_guide_book/Protocol_Screens/extraction_screen.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/Extraction_Instructions/bioneer_dna_protocol_screen.dart';
import 'package:referance_procedure_guide_book/Instructions_Screen.dart/Extraction_Instructions/bioneer_rna_protocol_screen.dart';

class ReferenceGuideBook extends StatelessWidget {
  const ReferenceGuideBook({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Molecular Diagnosis Guide',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProtocolScreen(title: 'Molecular Diagnosis Guide'),
      //these is where all the routes will be defined
      routes: {
        '/protocol': (context) =>
            const ProtocolScreen(title: 'Molecular Diagnosis Guide'),

        '/extraction': (context) => const ExtractionsScreen(),
        '/pcr': (context) => const PCRScreen(),
        '/dna_kit': (context) => const DNAKitSelectionScreen(),
        '/rna_kit': (context) => const RNAKitSelectionScreen(),

        '/bioneer_dna_extraction_protocol': (context) =>
            BioneerDNAProtocolScreen(),
        '/bioneer_plant_dna_extraction_protocol': (context) =>
            BioneerPlantTDNAProtocolScreen(),
        '/bioneer_rna_extraction_protocol': (context) =>
            BioneerRNAProtocolScreen(),

        '/daan_gene_extraction_protocol': (context) =>
            const DaAnGeneExtraction(),

            '/viral_na_kit': (context) => const ViralNAKitSelectionScreen(),
            '/zymo_sample': (context) => const ZymoSampleSelectionScreen(),
            '/bioneer_sample': (context) => const BioneerSampleSelectionScreen(),

            '/add_bio_extraction_protocol': (context) => AddBioProtocolScreen(),
            '/run_mei_extraction_protocol': (context) => RunMeiProtocolScreen(),

            '/zymo_stool_sample_protocol': (context) => ZymoStoolSampleProtocolScreen(),
            '/zymo_solidt_sample_protocol': (context) => ZymoSolidTSampleProtocolScreen(),
            '/zymo_fluid_sample_protocol': (context) => ZymoFluidSampleProtocolScreen(),
      },
    );
  }
}
