import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/reusable_txt.dart';
import '../../../Blocks/Components/input_field_row.dart';
import '../../../Blocks/Components/top_image_and_text_box.dart';

class SectionOneSlabSteel extends StatelessWidget {
  const SectionOneSlabSteel({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusableText(
            title: 'Dimension of Slab',
            fontSize: screenWidth * 0.04,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.16,
          width: screenWidth * 0.9,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.35,
                  child: Image.asset(
                    'assets/images/Tiles foot.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.01,
              ),
              Column(
                children: [
                  InputFieldRowBlocks(
                    rowTitle: 'Length(L)',
                    titleFontSize: screenWidth * 0.03,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'Ft' : 'M',
                  ),
                  InputFieldRowBlocks(
                    rowTitle: 'Width(W)',
                    titleFontSize: screenWidth * 0.03,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'Ft' : 'M',
                  ),
                  InputFieldRowBlocks(
                    rowTitle: 'Steel(Dia)',
                    titleFontSize: screenWidth * 0.03,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: 'mm',
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
