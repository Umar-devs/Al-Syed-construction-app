import 'package:flutter/material.dart';

import '../../../../../../../Constants/constants.dart';
import 'input_field_row.dart';

class SubtractWindowOrDoorAreaComponent extends StatelessWidget {
  const SubtractWindowOrDoorAreaComponent({super.key, required this.feetScreen});
final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return  InputFieldRow(
      rowTitle: 'Subtract Window\nor Door Area',
      unit: feetScreen?'sq.Ft':'sq.M',
      titleFontSize: screenWidth * 0.033,
    );
  }
}
