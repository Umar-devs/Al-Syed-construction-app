import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/input_field_row.dart';

class SectionTwoPaint extends StatelessWidget {
  const SectionTwoPaint({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
          child: InputFieldRowBricks(
            rowTitle: '1 gallon',
            titleFontSize: screenWidth * 0.03,
            leftPaddingToWholeRow: screenWidth * 0.0,
            spaceBetweenTitleAndField: screenWidth * 0.0,
            unit: 'Litter',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
          child: InputFieldRowBricks(
            rowTitle: '1 gallon price',
            titleFontSize: screenWidth * 0.03,
            unit: 'price',
            leftPaddingToWholeRow: 0,
            spaceBetweenTitleAndField: 0,
          ),
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        const CalculateBtn(),
      ],
    );
  }
}
