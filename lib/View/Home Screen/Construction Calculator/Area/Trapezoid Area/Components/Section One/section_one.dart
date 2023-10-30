import 'package:construction_app/Constants/constants.dart';
import 'package:construction_app/View/Components/customBtn.dart';
import 'package:construction_app/View/Components/reusable_txt.dart';
// import 'package:al_syed_construction_app/View/Home%20Screen/Associated%20Screens/Construction%20Calculator/Area/Trapezoid%20Area/trapezoid_area_in_feet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Bricks/Calculate Bricks Wall/Components/top_image_and_text_box.dart';
import '../../trapezoid_area_in_feet.dart';
import '../../trapezoid_area_in_meters.dart';

class SectionOneTrapezoidArea extends StatelessWidget {
  const SectionOneTrapezoidArea({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.025,
        ),
        const TitleBoxWithImage(
          imgPath: 'assets/images/Trapezoid Area.png',
          title: 'Calculate Trapezoid\nArea',
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        ReusableText(
            title: 'Active Unit Area',
            fontSize: screenWidth * 0.035,
            weight: FontWeight.w700,
            clr: Colors.white.withOpacity(0.9)),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        CustomBtn(
          btnHeight: 0.045,
          btnWidth: 0.5,
          topRightBorderRadius: 5,
          topLeftBorderRadius: 5,
          bottomRightBorderRadius: 5,
          bottomLeftBorderRadius: 5,
          label: feetScreen ? 'Check For Maters' : 'Check For Feet',
          onPress: () {
            feetScreen
                ? Get.to(const TrapezoidAreaInMeters(),
                    transition: Transition.size,
                    duration: const Duration(milliseconds: 1200))
                : Get.to(const TrapezoidAreaInFeet(),
                    transition: Transition.size,
                    duration: const Duration(milliseconds: 1200));
          },
          btnFontSize: 0.035,
          btnImgHeight: screenWidth * 0.1,
          btnImgWidth: screenWidth * 0.2,
        )
      ],
    );
  }
}
