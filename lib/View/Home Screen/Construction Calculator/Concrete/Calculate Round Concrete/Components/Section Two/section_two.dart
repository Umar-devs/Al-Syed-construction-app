import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../../../Components/reusable_txt.dart';
import '../../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../input_field_row.dart';

class SectionTwoRoundConcrete extends StatelessWidget {
  const SectionTwoRoundConcrete({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
          child: ReusableText(
              title: 'Dimension of Round Concrete',
              fontSize: screenWidth * 0.04,
              weight: FontWeight.w500,
              clr: Colors.white70),
        ),

        Row(
          children: [
            InputFieldRow(
              rowTitle: 'Diameter (d)',
              unit: feetScreen ? 'Ft' : 'M',
              titleFontSize: screenWidth * 0.028,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.6,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRow(
              rowTitle: 'Height (h)',
              unit: feetScreen ? 'Ft' : 'M',
              titleFontSize: screenWidth * 0.028,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.6,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRow(
              rowTitle: '1 Cement\nbag Price',
              unit: 'Kg',
              titleFontSize: screenWidth * 0.03,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.3,
              removeUnitType: true,
            ),
            InputFieldRow(
              rowTitle: 'Dry\nVolume',
              unit: 'mm',
              titleFontSize: screenWidth * 0.03,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.3,
              removeUnitType: true,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRow(
              rowTitle: '1 Cement\nBag',
              unit: 'Kg',
              titleFontSize: screenWidth * 0.03,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.3,
            ),
            InputFieldRow(
              rowTitle: 'Quantity(nos)',
              unit: 'mm',
              titleFontSize: screenWidth * 0.03,
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.2,
              removeUnitType: true,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRow(
              rowTitle:feetScreen?'1 CFT Concrete Price': '1 m3 Concrete Price',
              unit: '',
              titleFontSize: screenWidth * 0.028,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.6,
              removeUnitType: true,
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        const CalculateBtn(),
      ],
    );
  }
}
