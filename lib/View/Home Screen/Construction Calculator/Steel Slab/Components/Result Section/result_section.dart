import 'package:construction_app/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'Components/results_title.dart';

class ResultSectionSlabSteel extends StatelessWidget {
  const ResultSectionSlabSteel({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     const ResultsTitle(),
        SizedBox(height: screenHeight*0.05,)
      ],
    );
  }
}
