import 'package:construction_app/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:construction_app/View/Components/customBtn.dart';
import '../../../Components/custom_divider.dart';
import '../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class BlocksDimensionsInFeet extends StatelessWidget {
  const BlocksDimensionsInFeet({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        scaffoldChild: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //SectionOne() include components from start of screen to before first divider
                const SectionOneBlocks(
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                SizedBox(
                  height: screenHeight * 0.006,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                const SectionTwoBlocks(
                  feetScreen: true,
                ),
                CustomBtn(
                  btnHeight: 0.05,
                  btnWidth: 0.45,
                  topRightBorderRadius: 5,
                  topLeftBorderRadius: 5,
                  bottomRightBorderRadius: 5,
                  bottomLeftBorderRadius: 5,
                  label: 'Calculate',
                  onPress: () {},
                  btnFontSize: 0.033,
                  btnImgHeight: screenHeight * 0.01,
                  btnImgWidth: screenWidth * 0.02,
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const ResultSectionBlocks(
                  feetScreen: true,
                ),
              ],
            ),
          ),
        ),
        title: 'Calculate Block Quantity');
  }
}
