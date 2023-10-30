import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Area/Circular Area/Components/Result Section/Components/results_row.dart';
import 'Components/results_title.dart';

class ResultSectionTiles extends StatelessWidget {
  const ResultSectionTiles({super.key, required this.feetScreen});
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
          title: 'Total Area',
          result:feetScreen?'sq.Ft': 'sq.M',
        ),
        const ResultsRow(
          title: 'Number of Tiles',
          result: 'Tiles',
        ),
         const ResultsRow(
          title: 'Total Tiles cost in sq.Ft',
          result: 'Cost',
        ),
         const ResultsRow(
          title: 'Total Tiles cost in sq.M',
          result: 'Cost',
        ),


      ],
    );
  }
}
