import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Bricks/Calculate%20Circle%20Bricks%20Wall/Components/input_field_row.dart';
import 'package:flutter/material.dart';

import '../../../../../../../Constants/constants.dart';
import 'input_field_row.dart';

class SubtractWindowOrDoorAreaComponent extends StatelessWidget {
  const SubtractWindowOrDoorAreaComponent(
      {super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return InputFieldRowCircleBricks(
      rowTitle: 'Subtract Window\nor Door Area',
      unit: feetScreen ? 'sq.Ft' : 'sq.M',
      titleFontSize: screenWidth * 0.025,
      wantShortField: true,
      rowWidth: screenWidth,
      inputFieldWidth: screenWidth * 0.5,
      leftPaddingToWholeRow: screenWidth * 0.05,
      spaceBetweenTitleAndField: screenWidth * 0.18,
    );
  }
}
