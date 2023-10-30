import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:flutter/material.dart';
import '../../../../../Constants/constants.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key,
      required this.btnHeight,
      required this.btnWidth,
      required this.topRightBorderRadius,
      required this.topLeftBorderRadius,
      required this.bottomRightBorderRadius,
      required this.bottomLeftBorderRadius,
      required this.label,
      required this.onPress,
      required this.btnFontSize,
      this.wantImg = false,
      this.btnImgPath,
      required this.btnImgHeight,
      required this.btnImgWidth});
  final double btnHeight;
  final double btnWidth;
  final double topRightBorderRadius;
  final double topLeftBorderRadius;
  final double bottomRightBorderRadius;
  final double bottomLeftBorderRadius;
  final String label;
  final VoidCallback onPress;
  final double btnFontSize;
  final bool wantImg;
  final String? btnImgPath;
  final double btnImgHeight;
  final double btnImgWidth;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: screenHeight * btnHeight,
        width: screenWidth * btnWidth,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff008FFF),
                Color(0xff00227E),
              ]),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(topRightBorderRadius),
              topLeft: Radius.circular(topLeftBorderRadius),
              bottomRight: Radius.circular(bottomRightBorderRadius),
              bottomLeft: Radius.circular(bottomLeftBorderRadius)),
        ),
        child: wantImg
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: btnImgWidth,
                    height: btnImgHeight,
                    child: Image.asset(
                      btnImgPath!,
                      fit: BoxFit.fill,
                    ),
                  ),
                  ReusableText(
                      title: label,
                      fontSize: screenWidth * btnFontSize,
                      weight: FontWeight.w400,
                      clr: Colors.white),
                ],
              )
            : Center(
                child: ReusableText(
                    title: label,
                    fontSize: screenWidth * btnFontSize,
                    weight: FontWeight.w400,
                    clr: Colors.white),
              ),
      ),
    );
  }
}
