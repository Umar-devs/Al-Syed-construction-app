import 'package:flutter/material.dart';
import '../../../../../../Constants/constants.dart';
import '../../../../Components/custom_divider.dart';
import '../../../../Components/custom_scaffold.dart';
import '../Calculate Bricks Wall/Components/subtract_window_or_door_area.dart';
import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class BricksDimensionsInFeetCircularWall extends StatelessWidget {
  const BricksDimensionsInFeetCircularWall({super.key});

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
                const SectionOneCircularWall(
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const CustomDivider(),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const SubtractWindowOrDoorAreaComponent(
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                const CustomDivider(),
                //SectionTwo contains components before result section
                 SectionTwoCircularWall(
                  feetScreen: true,
                ),
                SizedBox(
                  height: screenHeight * 0.005,
                ),
                 ResultSectionCircularWall(
                  feetScreen: true,
                ),
              ],
            ),
          ),
        ),
        title: 'Circle Bricks Wall Calculator');
  }
}
