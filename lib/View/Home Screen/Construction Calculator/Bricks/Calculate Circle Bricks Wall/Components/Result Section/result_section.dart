import 'package:construction_app/Controllers/Bricks%20Controller/bricks_circular_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../Constants/constants.dart';
import '../../../../Area/Circular Area/Components/Result Section/Components/results_row.dart';
import '../../../Calculate Bricks Wall/Components/Result Section/Components/results_title.dart';

class ResultSectionCircularWall extends StatelessWidget {
  ResultSectionCircularWall({super.key, required this.feetScreen});
  final CircleBricksController circleBricksController =
      Get.put(CircleBricksController());
  final bool feetScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResultsTitle(),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Obx(() => ResultsRow(
              title: 'Total Volume',
              result: feetScreen
                  ? '${circleBricksController.totalVolume.value.toStringAsFixed(3)}CFT'
                  : 'm3',
            )),
        Obx(() => ResultsRow(
              title: 'Brick Cost',
              result:
                  '${circleBricksController.bricksCost.toStringAsFixed(2)}Amount',
            )),
        Obx(() => ResultsRow(
              title: 'Cement Bags',
              result:
                  '${circleBricksController.totalCementBags.value.toStringAsFixed(2)}Bags',
            )),
        Obx(() => ResultsRow(
              title: 'Cement Cost',
              result: '${circleBricksController.cementCost.value.toStringAsFixed(2)}Amount',
            )),
        ResultsRow(
          title: 'Sand',
          result: feetScreen ? 'CFT' : 'm3',
        ),
        Obx(() => ResultsRow(
              title: 'Number of Bricks',
              result:
                  '${circleBricksController.numberOfBricks.value.toStringAsFixed(2)}Bricks',
            )),
      ],
    );
  }
}
