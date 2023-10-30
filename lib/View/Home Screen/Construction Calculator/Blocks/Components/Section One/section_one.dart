import 'package:flutter/material.dart';
import '../../../../../../../Constants/constants.dart';
import '../../../../../Components/reusable_txt.dart';
import '../../../Paint/Components/input_field_row.dart';

class SectionOneBlocks extends StatelessWidget {
  const SectionOneBlocks({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: screenHeight*0.02,),
        ReusableText(
            title: 'Dimension of Wall',
            fontSize: screenWidth * 0.04,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.21,
          width: screenWidth,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.35,
                  child: Image.asset(
                    'assets/images/blocks feet.png',
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
                    unit: feetScreen ? 'Ft' : 'M',
                  ),
                  InputFieldRowBlocks(
                    rowTitle: 'Height(H)',
                    titleFontSize: screenWidth * 0.03,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: feetScreen ? 'Ft' : 'M',
                  ),
                  InputFieldRowBlocks(
                    rowTitle: 'Thickness\n(T)',
                    titleFontSize: screenWidth * 0.03,
                    unit: feetScreen ? 'inch' : 'mm',
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                  ),
                  InputFieldRowBlocks(
                    rowTitle: 'Quantity',
                    titleFontSize: screenWidth * 0.03,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                    unit: 'NOS',
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
