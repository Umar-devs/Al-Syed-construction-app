import 'package:construction_app/Constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';



class BricksVolumeInMeters extends StatelessWidget {
  const BricksVolumeInMeters({super.key});
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
                const SectionOneBricksVolume(feetScreen: false,),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                //SectionTwo contains components before result section
                const SectionTwoVolumeBricks(feetScreen: false,),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const ResultSectionVolumeBricks(feetScreen: false,),
              ],
            ),
          ),
        ),
        title: 'Calculate Bricks Quantity');
  }
}
