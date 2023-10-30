import 'package:construction_app/Utils/utils.dart';
import 'package:get/get.dart';

class CircleBricksController extends GetxController {
  RxDouble diaMeter = 0.0.obs;
  RxDouble heightCircleWall = 0.0.obs;
  RxDouble thickCircleWall = 0.0.obs;

  RxDouble doorArea = 0.0.obs;

  RxDouble lengthBrickDimension = 0.0.obs;
  RxDouble widthBrickDimension = 0.0.obs;
  RxDouble thickBrickDimension = 0.0.obs;
  RxDouble brickPrice = 0.0.obs;
  RxDouble cementBagWeight = 0.0.obs;
  RxDouble cementBagNumbers = 0.0.obs;
  RxDouble mortarRatioCement = 0.0.obs;
  RxDouble mortarRatioSand = 0.0.obs;
  RxDouble oneCementBagPrice = 0.0.obs;

  RxDouble totalVolume = 0.0.obs;
  RxDouble numberOfBricks = 0.0.obs;
  RxDouble bricksCost = 0.0.obs;
  RxDouble oneBrickPrice = 0.0.obs;
  RxDouble totalCementBags = 0.0.obs;
  RxDouble cementCost = 0.0.obs;
  void getDiameter(value) {
    diaMeter.value = value;
  }

  void getHeight(value) {
    heightCircleWall.value = value;
  }

  void getLengthInBricksDimension(value) {
    lengthBrickDimension.value = value;
    lengthBrickDimension.value = lengthBrickDimension.value / 12;
  }

  void getWidthInBricksDimension(value) {
    widthBrickDimension.value = value;
    widthBrickDimension.value = widthBrickDimension.value / 12;
  }

  void getThicknessOfBricks(value) {
    thickBrickDimension.value = value;
    thickBrickDimension.value = thickBrickDimension.value / 12;
  }

  void getDoorArea(value) {
    doorArea.value = value;
  }

  void getOneBrickPrice(value) {
    oneBrickPrice.value = value;
  }

  void getMortarRatioCement(value) {
    mortarRatioCement.value = value;
  }

  void getMortarRatioSand(value) {
    mortarRatioSand.value = value;
  }

  void getCementBagWeight(value) {
    cementBagWeight.value = value;
  }

  void getOneCementBagPrice(value) {
    oneCementBagPrice.value = value;
  }

  void calculateVolume() {
    double D = diaMeter.value; //2
    double d = diaMeter.value -
        ((thickBrickDimension.value / 12) +
            (thickBrickDimension.value / 12)); //1.66667
    totalVolume.value = 3.141593 * heightCircleWall.value * (D * D - d * d); //

    totalVolume.value = totalVolume.value / 4;

    totalVolume.value = totalVolume.value - doorArea.value;
  }

  void calculateNumberOfBricks() {
    double denominator = lengthBrickDimension.value *
        widthBrickDimension.value *
        thickBrickDimension.value;
    numberOfBricks.value = (1 / denominator) * 0.95 * totalVolume.value;
    bricksCost.value = oneBrickPrice.value * numberOfBricks.value;
  }

  void calculateCementBagsFeet() {
    double partOne = totalVolume.value * 0.3175 * mortarRatioCement.value;
    double sumOfMortars = mortarRatioCement.value + mortarRatioSand.value;
    Utils().toastMessage('Vol ${totalVolume.value}');
    Utils().toastMessage('c ${mortarRatioCement.value}');
    Utils().toastMessage('s ${mortarRatioSand.value}');
    Utils().toastMessage('sum $sumOfMortars');

    totalCementBags.value =
        (partOne / sumOfMortars) * (40 / cementBagWeight.value);
    cementCost.value = totalCementBags.value *oneCementBagPrice.value;
        Utils().toastMessage('bags ${totalCementBags.value}');
  }
}
