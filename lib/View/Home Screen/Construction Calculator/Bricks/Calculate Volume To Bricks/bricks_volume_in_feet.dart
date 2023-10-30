import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../../Constants/constants.dart';
import '../../../../Components/custom_scaffold.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class BricksVolumeInFeet extends StatelessWidget {
  const BricksVolumeInFeet({super.key});

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
                const SectionOneBricksVolume(feetScreen: true,),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
              const CustomDivider(),
                //SectionTwo contains components before result section
                const SectionTwoVolumeBricks(feetScreen: true,),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const ResultSectionVolumeBricks(feetScreen: true,),
              ],
            ),
          ),
        ),
        title: 'Circle Bricks Wall Calculator');
  }
}
