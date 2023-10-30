import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../Blocks/Components/input_field_row.dart';
import '../../../Blocks/Components/top_image_and_text_box.dart';

class SectionOnePaint extends StatelessWidget {
  const SectionOnePaint({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleBoxWithImageBlocks(
            imgPath: 'assets/images/Paint meter.png',
            title: 'Dimension of Wall'),
        Padding(
          padding:  EdgeInsets.only(right:screenWidth*0.02),
          child: InputFieldRowBlocks(
            rowTitle: 'Length',
            titleFontSize: screenWidth * 0.03,
            unit: feetScreen?'Ft':'M',
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(right:screenWidth*0.02),
          child: InputFieldRowBlocks(
            rowTitle: 'Height',
            titleFontSize: screenWidth * 0.03,
            unit: feetScreen?'Ft':'M',
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(right:screenWidth*0.02),
          child: InputFieldRowBlocks(
            rowTitle: 'Quantity',
            titleFontSize: screenWidth * 0.03,
            unit: 'NOS',
          ),
        ),

      ],
    );
  }
}
