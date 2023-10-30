import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../Area/Circular Area/Components/Result Section/Components/results_row.dart';
import 'Components/results_title.dart';

class ResultSectionRoundConcrete extends StatelessWidget {
  const ResultSectionRoundConcrete({super.key, required this.feetScreen});
final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
         ResultsRow(
          title: 'Concrete Volume',
          result:feetScreen?'CFT': 'm3',
        ),
         const ResultsRow(
          title: 'Concrete Cost',
          result: 'Amount',
        ),
         const ResultsRow(
          title: 'Cement Bags',
          result: 'Bags',
        ),
         const ResultsRow(
          title: 'Cement Cost',
          result: 'Amount',
        ),
         ResultsRow(
          title: 'Sand',
           result:feetScreen?'CFT': 'm3',
        ),
          ResultsRow(
          title: 'Aggregate',
          result:feetScreen? 'CFT': 'm3',
        ),
      ],
    );
  }
}
