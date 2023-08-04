import 'package:flutter/material.dart';

class InstructionSections extends StatelessWidget {
  const InstructionSections(this.heading, this.instructions, {super.key});

  final String heading;
  final List<String> instructions;

  final double instructionTextMargin = 8.0,
      subHeadingTextSize = 20.0,
      instructionTextSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: subHeadingTextSize,
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: instructions.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: instructionTextMargin,
                ),
                child: Text(
                  instructions[index],
                  style: TextStyle(
                    fontSize: instructionTextSize,
                  ),
                ),
              );
            }),
      ],
    );
  }
}
