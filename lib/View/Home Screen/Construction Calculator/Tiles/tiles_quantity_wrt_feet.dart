import 'package:construction_app/Constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../Components/custom_divider.dart';
import '../../../Components/custom_scaffold.dart';
import '../../../Components/reusable_txt.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';


class TilesQuantityInFeet extends StatelessWidget {
  const TilesQuantityInFeet({super.key});
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
                ReusableText(
                    title: 'Dimension of Bathroom Bed\n And Bedroom Bed',
                    fontSize: screenWidth * 0.03,
                    weight: FontWeight.w600,
                    clr: Colors.white),
                //SectionOne() include components from start of screen to before first divider
                const SectionOneTiles(feetScreen: true,),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                const SectionTwoTiles(feetScreen: true),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const ResultSectionTiles(feetScreen: true,),
              ],
            ),
          ),
        ),
        title: 'Calculate Tiles Quantity');
  }
}
