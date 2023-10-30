import 'package:flutter/material.dart';
import '../../../../../Constants/constants.dart';
import '../../../Components/custom_divider.dart';
import '../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class TilesQuantityInMeters extends StatelessWidget {
  const TilesQuantityInMeters({super.key});
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
                const SectionOneTiles(feetScreen: false,),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                const SectionTwoTiles(feetScreen: false),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const ResultSectionTiles(feetScreen: false,),
              ],
            ),
          ),
        ),
        title: 'Calculate Tiles Quantity');
  }
}