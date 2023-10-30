import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:flutter/material.dart';

class ResultSectionPaint extends StatelessWidget {
  const ResultSectionPaint({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.05),
          child: Align(
            alignment: Alignment.centerLeft,
            child: ReusableText(
                alignTxt: TextAlign.start,
                title: 'Dry wall(old wall) Results',
                fontSize: screenWidth * 0.035,
                weight: FontWeight.w700,
                clr: Colors.white70),
          ),
        ),
        SizedBox(height: screenHeight*0.1,),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.05),
          child: Align(
            alignment: Alignment.centerLeft,
            child: ReusableText(
                alignTxt: TextAlign.start,
                title: 'wet wall(new wall) Results',
                fontSize: screenWidth * 0.035,
                weight: FontWeight.w700,
                clr: Colors.white70),
          ),
        ),

        SizedBox(height: screenHeight*0.1,),
        const CustomDivider(), SizedBox(height: screenHeight*0.03,),
      ],
    );
  }
}
