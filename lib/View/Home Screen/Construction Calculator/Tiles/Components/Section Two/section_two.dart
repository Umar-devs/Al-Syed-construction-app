import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../../Components/reusable_txt.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/input_field_row.dart';

class SectionTwoTiles extends StatelessWidget {
  const SectionTwoTiles({super.key, required this.feetScreen});
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
              title: 'Dimension of 1 Tile',
              fontSize: screenWidth * 0.04,
              weight: FontWeight.w500,
              clr: Colors.white70),
        ),
        Row(
          children: [
            SizedBox(
              width: screenWidth * 0.05,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: screenHeight * 0.12,
                width: screenWidth * 0.35,
                child: Image.asset(
                  'assets/images/Tile Dimension Image.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.04),
                  child: InputFieldRowBricks(
                    rowTitle: 'Length    ',
                    spaceBetweenTitleAndField: screenWidth * 0.0,
                    titleFontSize: screenWidth * 0.035,
                    unit: feetScreen ? 'Ft' : 'cm',
                    leftPaddingToWholeRow: screenWidth * 0.0,
                    wantShortField: true,
                    inputFieldWidth: screenWidth * 0.35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.04),
                  child: InputFieldRowBricks(
                    rowTitle: 'Width     ',
                    titleFontSize: screenWidth * 0.035,
                    spaceBetweenTitleAndField: screenWidth * 0.0,
                    unit: feetScreen ? 'Ft' : 'cm',
                    wantShortField: true,
                    leftPaddingToWholeRow: screenWidth * 0.0,
                    inputFieldWidth: screenWidth * 0.35,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.03,
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
