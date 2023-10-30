import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Paint/Components/input_field_row.dart';
import 'Components/results_title.dart';

class ResultSectionBlocks extends StatelessWidget {
  const ResultSectionBlocks({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        InputFieldRowBlocks(
            rowTitle: 'Number of Blocks',
            unit: 'NO',wantShortField: true,
            rowWidth: screenWidth*0.9,
            inputFieldWidth: screenWidth*0.5,
            titleFontSize: screenWidth * 0.03),
        InputFieldRowBlocks(
            rowTitle: 'Total Blocks Cost',
            unit: 'Cost',
            wantShortField: true,
            rowWidth: screenWidth*0.9,
            inputFieldWidth: screenWidth*0.5,
            titleFontSize: screenWidth * 0.03),
        SizedBox(
          height: screenHeight * 0.015,
        ),

      ],
    );
  }
}
