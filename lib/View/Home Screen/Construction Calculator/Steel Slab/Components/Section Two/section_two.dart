import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/input_field_row.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/top_image_and_text_box.dart';

class SectionTwoSlabSteel extends StatelessWidget {
  const SectionTwoSlabSteel({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        const TitleBoxWithImage(
          imgPath: 'assets/images/slab steel meter 1.png',
          title: 'Space Between \nTwo Steel',
        ),
        InputFieldRowBricks(
          rowTitle: 'Long Bar(L)           ',
          titleFontSize: screenWidth * 0.03,
          unit: 'inch',
          leftPaddingToWholeRow: screenWidth * 0.0,
          spaceBetweenTitleAndField: screenWidth * 0.0,
        ),
        InputFieldRowBricks(
          rowTitle: 'Short Bar(a)         ',
          titleFontSize: screenWidth * 0.03,
          leftPaddingToWholeRow: screenWidth * 0.0,
          spaceBetweenTitleAndField: screenWidth * 0.0,
          unit: 'inch',
        ),
        InputFieldRowBricks(
            rowTitle: 'Quantity                ',
            unit: 'Nos',
            leftPaddingToWholeRow: screenWidth * 0.0,
            spaceBetweenTitleAndField: screenWidth * 0.0,
            titleFontSize: screenWidth * 0.03),
        InputFieldRowBricks(
            rowTitle: 'Steel 1 kg\nPrice                       ',
            leftPaddingToWholeRow: screenWidth * 0.0,
            spaceBetweenTitleAndField: screenWidth * 0.0,
            unit: 'Price',
            titleFontSize: screenWidth * 0.03),
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
