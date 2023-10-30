import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../../../Room/Components/input_field.dart';

class SectionTwoPlaster extends StatelessWidget {
  const SectionTwoPlaster({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputFieldRowPlaster(
                rowTitle: 'Length(L)',
                unit: feetScreen ? 'Ft' : 'M',
                wantShortField: true,
                rowWidth: screenWidth * 0.48,
                inputFieldWidth: screenWidth * 0.25,
                titleFontSize: screenWidth * 0.025),
            InputFieldRowPlaster(
                rowTitle: 'Height(H)',
                unit: feetScreen ? 'Ft' : 'M',
                rowWidth: screenWidth * 0.48,
                wantShortField: true,
                inputFieldWidth: screenWidth * 0.25,
                titleFontSize: screenWidth * 0.025),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.02),
          child: InputFieldRowPlaster(
              rowTitle: 'Thickness(T)',
              wantShortField: true,
              rowWidth: screenWidth,
              inputFieldWidth: screenWidth*0.6,
              unit: 'mm',
              titleFontSize: screenWidth * 0.025),
        ),
        Row(
          children: [
            InputFieldRowPlaster(
              rowTitle: '1 Cement Bag   \nPrice',
              unit: '',
              titleFontSize: screenWidth * 0.025,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.2,
              rowWidth: screenWidth*0.48,
              removeUnitType: true,
            ),
            InputFieldRowPlaster(
              rowTitle: 'Dry \nVolume',
              unit: '',
              titleFontSize: screenWidth * 0.025,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.2,
              rowWidth: screenWidth*0.48,
              removeUnitType: true,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRowPlaster(
              rowTitle: '1 Cement Bag    ',
              unit: 'kg',
              titleFontSize: screenWidth * 0.025,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.2,
              rowWidth: screenWidth*0.48,
            ),
            InputFieldRowPlaster(
              rowTitle: 'Quantity     \n(nos)  ',
              unit: 'kg',
              titleFontSize: screenWidth * 0.025,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.2,
              rowWidth: screenWidth*0.48,
              removeUnitType: true,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.02),
          child: InputFieldRowPlaster(
              rowTitle: '1 Sq.M Plaster Price',
              unit: 'Price',
              titleFontSize: screenWidth * 0.03),
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        const CalculateBtn(),
      ],
    );
  }
}
