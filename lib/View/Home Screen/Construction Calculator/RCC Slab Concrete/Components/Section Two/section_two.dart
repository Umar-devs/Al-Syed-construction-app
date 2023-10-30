import 'package:construction_app/View/Components/custom_divider.dart';
import 'package:construction_app/View/Components/reusable_txt.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../Bricks/Calculate Bricks Wall/Components/calculate_btn.dart';
import '../input_field_row.dart';
import '../top_image_and_text_box.dart';

class SectionTwoRCCSlabConcrete extends StatelessWidget {
  const SectionTwoRCCSlabConcrete({super.key, required this.feetScreen});
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          children: [
            SizedBox(width: screenWidth*0.05,),
            ReusableText(
                title: 'Concrete Ratio',
                fontSize: screenWidth * 0.03,
                weight: FontWeight.w700,
                clr: Colors.white70),
            InputFieldRowRccSlabsConcrete(
              rowTitle: '',
              unit: '',
              titleFontSize: screenWidth * 0,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.17,
              removeUnitType: true,
            ),
            InputFieldRowRccSlabsConcrete(
              rowTitle: '',
              unit: '',
              titleFontSize: screenWidth * 0,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.17,
              removeUnitType: true,
              changePaddingOnLeft: true,
              newPadding: screenWidth * 0.02,
            ),
            InputFieldRowRccSlabsConcrete(
              rowTitle: '',
              unit: '',
              titleFontSize: screenWidth * 0,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.24,
              removeUnitType: true,
              changePaddingOnLeft: true,
              newPadding: screenWidth * 0.02,
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: screenWidth*0.25,),
              ReusableText(
                  title: 'Cement',
                  fontSize: screenWidth * 0.03,
                  weight: FontWeight.w700,
                  clr: Colors.white70),
              SizedBox(
                width: screenWidth * 0.07,
              ),
              ReusableText(
                  title: 'Sand',
                  fontSize: screenWidth * 0.03,
                  weight: FontWeight.w700,
                  clr: Colors.white70),
              SizedBox(
                width: screenWidth * 0.085,
              ),
              ReusableText(
                  title: 'Aggregate',
                  fontSize: screenWidth * 0.025,
                  weight: FontWeight.w700,
                  clr: Colors.white70),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.015,
        ),
        const CustomDivider(),
        Row(
          children: [
            InputFieldRowRccSlabsConcrete(
              rowTitle: 'Dry Volume   ',
              unit: '',
              titleFontSize: screenWidth * 0.03,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.16,
              removeUnitType: true,
            ),
            InputFieldRowRccSlabsConcrete(
              rowTitle: 'Cement Bag  ',
              changePaddingOnLeft: true,
              newPadding: screenWidth * 0.02,
              unit: 'Kg',
              titleFontSize: screenWidth * 0.03,
              wantShortField: true,
              inputFieldWidth: screenWidth * 0.25,
            ),
          ],
        ),
        ReusableText(
            title: 'Space Between Two Steel',
            fontSize: screenWidth * 0.035,
            weight: FontWeight.w600,
            clr: Colors.white),
        SizedBox(
          height: screenHeight * 0.16,
          width: screenWidth,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.35,
                  child: Image.asset(
                    'assets/images/space steel.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputFieldRowRccSlabsConcrete(
                    rowTitle: 'Long Bar(L)',
                    titleFontSize: screenWidth * 0.03,
                    unit: feetScreen ? 'inch' : 'MM',
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                  ),
                  InputFieldRowRccSlabsConcrete(
                    rowTitle: 'Short Bar\n(S)',
                    titleFontSize: screenWidth * 0.03,
                    unit: feetScreen ? 'inch' : 'MM',
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                  ),
                  InputFieldRowRccSlabsConcrete(
                    rowTitle: 'Steel 1 kg\nPrice',
                    titleFontSize: screenWidth * 0.03,
                    unit: 'Price',
                    wantShortField: true,
                    rowWidth: screenWidth * 0.5,
                    inputFieldWidth: screenWidth * 0.25,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        Row(
          children: [
            InputFieldRowRccSlabsConcrete(
              rowTitle: 'S Bar Steel\nDia',
              titleFontSize: screenWidth * 0.03,
              unit: 'mm',
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.25,
            ),
            InputFieldRowRccSlabsConcrete(
              rowTitle: 'L Bar Steel\nDia',
              titleFontSize: screenWidth * 0.03,
              unit: 'mm',
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.25,
            ),
          ],
        ),
        Row(
          children: [
            InputFieldRowRccSlabsConcrete(
              rowTitle: 'Double or\nSingle Steel\nDia',
              titleFontSize: screenWidth * 0.023,
              unit: 'nos',
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.25,
            ),
            InputFieldRowRccSlabsConcrete(
              rowTitle: '1 Cement\nBag',
              titleFontSize: screenWidth * 0.03,
              unit: 'Price',
              wantShortField: true,
              rowWidth: screenWidth * 0.5,
              inputFieldWidth: screenWidth * 0.25,
            ),
          ],
        ),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        const CustomDivider(),
        SizedBox(
          height: screenHeight * 0.01,
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        const CalculateBtn(),
      ],
    );
  }
}
