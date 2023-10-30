import 'package:construction_app/View/Components/customBtn.dart';
import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../input_field_row.dart';
import '../top_image_and_text_box.dart';

class SectionTwoBlocks extends StatelessWidget {
  const SectionTwoBlocks({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusableText(
            title: 'Dimension of Block with\nMortar Ratio',
            fontSize: screenWidth * 0.04,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.3,
          width: screenWidth,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.35,
                  child: Image.asset(
                    'assets/images/blocks feet 2.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Column(
                children: [
                  InputFieldRowBlocks(
                    rowTitle: 'Length(L)',
                    titleFontSize: screenWidth * 0.03,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'inch' : 'mm',
                  ),
                  InputFieldRowBlocks(
                    rowTitle: 'Height(H)',
                    titleFontSize: screenWidth * 0.03,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'inch' : 'mm',
                  ),
                  InputFieldRowBlocks(
                    rowTitle: 'Width(W)',
                    titleFontSize: screenWidth * 0.03,
                    unit: feetScreen ? 'inch' : 'mm',
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                  ),
                  InputFieldRowBlocks(
                    rowTitle: '1 Block\nPrice',
                    titleFontSize: screenWidth * 0.03,
                    wantShortField: true,
                    removeUnitType: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: 'NOS',
                  ),
                  InputFieldRowBlocks(
                    rowTitle: 'Window or\ndoor area',
                    titleFontSize: screenWidth * 0.03,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'sq.Ft' : 'sq.M',
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
