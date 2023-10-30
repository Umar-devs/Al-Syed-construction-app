import 'package:construction_app/Constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../Components/custom_divider.dart';
import '../../../../../Components/reusable_txt.dart';
import '../../../Area/Circular Area/Components/Result Section/Components/results_title.dart';

class ResultSectionRCCSlabConcrete extends StatelessWidget {
  const ResultSectionRCCSlabConcrete({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return const Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResultsTitle(),
      ],
    );
  }
}
