import 'package:construction_app/Controllers/Bricks%20Controller/bricks_wall_controller.dart';
import 'package:construction_app/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../../../Components/reusable_txt.dart';
import '../input_field_row.dart';

class SectionTwo extends StatelessWidget {
  SectionTwo({super.key, required this.feetScreen});
  final bool feetScreen;
  final BricksController bricksController = Get.put(BricksController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.005,
        ),
        ReusableText(
            title: 'Dimension of Brick With Mortar',
            fontSize: screenWidth * 0.035,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.05, right: screenWidth * 0.03),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.35,
                  child: Image.asset(
                    'assets/images/brick image.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                InputFieldRowBricks(
                  rowTitle: 'Length (L)',
                  unit: feetScreen ? 'inch' : 'mm',
                  titleFontSize: screenWidth * 0.025,
                  wantShortField: true,
                  rowWidth: screenWidth * 0.5,
                  inputFieldWidth: screenWidth * 0.3,
                  leftPaddingToWholeRow: screenWidth * 0.05,
                  spaceBetweenTitleAndField: screenWidth * 0.05,
                ),
                InputFieldRowBricks(
                  rowTitle: 'Width (W)',
                  unit: feetScreen ? 'inch' : 'mm',
                  titleFontSize: screenWidth * 0.025,
                  wantShortField: true,
                  rowWidth: screenWidth * 0.5,
                  inputFieldWidth: screenWidth * 0.3,
                  leftPaddingToWholeRow: screenWidth * 0.05,
                  spaceBetweenTitleAndField: screenWidth * 0.05,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputFieldRowBricks(
              rowTitle: 'Thick (T)',
              unit: feetScreen ? 'inch' : 'mm',
              titleFontSize: screenWidth * 0.025,
              wantShortField: true,
              rowWidth: screenWidth * 0.45,
              inputFieldWidth: screenWidth * 0.25,
              leftPaddingToWholeRow: screenWidth * 0.05,
              spaceBetweenTitleAndField: screenWidth * 0.02,
            ),
            InputFieldRowBricks(
              rowTitle: '1 Brick Price',
              unit: feetScreen ? 'Ft' : 'M',
              titleFontSize: screenWidth * 0.025,
              wantShortField: true,
              rowWidth: screenWidth * 0.45,
              inputFieldWidth: screenWidth * 0.25,
              leftPaddingToWholeRow: screenWidth * 0.0,
              removeInputFieldType: true,
              spaceBetweenTitleAndField: screenWidth * 0.02,
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputFieldRowBricks(
              rowTitle: '1 cement\n  bag',
              unit: 'kg',
              titleFontSize: screenWidth * 0.025,
              wantShortField: true,
              rowWidth: screenWidth * 0.45,
              inputFieldWidth: screenWidth * 0.25,
              leftPaddingToWholeRow: screenWidth * 0.05,
              spaceBetweenTitleAndField: screenWidth * 0.02,
            ),
            InputFieldRowBricks(
              rowTitle: 'Quantity\n(nos)',
              unit: feetScreen ? 'Ft' : 'M',
              titleFontSize: screenWidth * 0.025,
              wantShortField: true,
              rowWidth: screenWidth * 0.45,
              inputFieldWidth: screenWidth * 0.25,
              leftPaddingToWholeRow: screenWidth * 0.0,
              removeInputFieldType: true,
              spaceBetweenTitleAndField: screenWidth * 0.06,
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputFieldRowBricks(
              rowTitle: 'Mortar\nRatio',
              unit: 'cement',
              titleFontSize: screenWidth * 0.025,
              wantShortField: true,
              rowWidth: screenWidth * 0.45,
              inputFieldWidth: screenWidth * 0.25,
              leftPaddingToWholeRow: screenWidth * 0.05,
              removeInputFieldType: true,
              spaceBetweenTitleAndField: screenWidth * 0.05,
            ),
            InputFieldRowBricks(
              rowTitle: 'Mortar\nRatio',
              unit: 'sand',
              titleFontSize: screenWidth * 0.025,
              wantShortField: true,
              rowWidth: screenWidth * 0.45,
              inputFieldWidth: screenWidth * 0.25,
              leftPaddingToWholeRow: screenWidth * 0.0,
              removeInputFieldType: true,
              spaceBetweenTitleAndField: screenWidth * 0.0,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.34, right: screenWidth * 0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusableText(
                  title: 'Cement',
                  fontSize: screenWidth * 0.025,
                  weight: FontWeight.w500,
                  clr: Colors.white),
              ReusableText(
                  title: 'Sand',
                  fontSize: screenWidth * 0.025,
                  weight: FontWeight.w500,
                  clr: Colors.white),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        feetScreen
            ? InputFieldRowBricks(
                rowTitle: '1 cement bag price',
                unit: 'Price',
                titleFontSize: screenWidth * 0.025,
                wantShortField: true,
                rowWidth: screenWidth,
                inputFieldWidth: screenWidth * 0.6,
                leftPaddingToWholeRow: screenWidth * 0.06,
                spaceBetweenTitleAndField: screenWidth * 0.05,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InputFieldRowBricks(
                    rowTitle: '1 cement\nbag price',
                    unit: 'kg',
                    titleFontSize: screenWidth * 0.023,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.45,
                    inputFieldWidth: screenWidth * 0.25,
                    leftPaddingToWholeRow: screenWidth * 0.05,
                    removeInputFieldType: true,
                    spaceBetweenTitleAndField: screenWidth * 0.02,
                  ),
                  InputFieldRowBricks(
                    rowTitle: 'Dry\nVolume',
                    unit: feetScreen ? 'Ft' : 'M',
                    titleFontSize: screenWidth * 0.025,
                    wantShortField: true,
                    rowWidth: screenWidth * 0.45,
                    inputFieldWidth: screenWidth * 0.25,
                    leftPaddingToWholeRow: screenWidth * 0.0,
                    removeInputFieldType: true,
                    spaceBetweenTitleAndField: screenWidth * 0.07,
                  ),
                ],
              ),
        GestureDetector(
          onTap: () {
            if (bricksController.lengthInDimensionOfWall.value == 0 ||
                bricksController.heightInDimensionOfWall.value == 0) {
              Utils().toastMessage('some details are missing');
            } else {
              feetScreen
                  ? bricksController.calculateVolumeFeet()
                  : bricksController.calculateVolumeMeter();
              feetScreen
                  ? bricksController.calculateNumberOfBricksFeet()
                  : bricksController.calculateNumberOfBricksMeters();
              feetScreen
                  ? bricksController.calculateCementBagsFeet()
                  : bricksController.calculateCementBagsMeters();
              feetScreen
                  ? bricksController.calculateTotalSandFeet()
                  : bricksController.calculateTotalSandMeters();
            }
          },
          child: Container(
            margin: const EdgeInsets.only(top: 5.0),
            height: screenHeight * 0.045,
            width: screenWidth * 0.5,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff008FFF),
                    Color(0xff00227E),
                  ]),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5)),
            ),
            child: Center(
              child: ReusableText(
                  title: 'Calculate',
                  fontSize: screenWidth * 0.03,
                  weight: FontWeight.w500,
                  clr: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
