import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/View/Components/custom_scaffold.dart';
import 'package:flutter/material.dart';

import 'Components/Result Section/result_section.dart';
import 'Components/Section One/section_one.dart';
import 'Components/Section Two/section_two.dart';

class TriangularAreaInMeters extends StatelessWidget {
  const TriangularAreaInMeters({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(scaffoldChild: SizedBox(
      height: screenHeight,
      width: screenWidth,
      child:  const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SectionOneTriangularArea(feetScreen: false),
            SectionTwoTriangularArea(feetScreen: false),
            ResultSectionTriangularArea(feetScreen: false),
          ],
        ),
      ),

    ), title: 'Triangular Area');
  }
}


// assets/images/Square and rectangle area.png