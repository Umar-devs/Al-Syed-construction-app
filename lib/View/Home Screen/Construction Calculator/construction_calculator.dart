import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Constants/constants.dart';
import '../../Components/custom_scaffold.dart';
import 'Area/area.dart';
import 'Blocks/blocks.dart';
import 'Bricks/Bricks Unit/bricks_unit.dart';
import 'Concrete/Concrete Unit/concrete_unit.dart';
import 'Paint/paint.dart';
import 'Plaster/plaster.dart';
import 'RCC Slab Concrete/rcc_slab_concrete.dart';
import 'Steel Slab/steel_slab.dart';
import 'Steel/steel.dart';
import 'Tiles/tiles.dart';
import 'Unit Converter/unit_converter.dart';

class ConstructionCalculator extends StatelessWidget {
  ConstructionCalculator({super.key});
  final List<String> imagesPaths = [
    'assets/images/concrete.jpg',
    'assets/images/bricks.jpg',
    'assets/images/tiles.jpg',
    'assets/images/plaster.jpg',
    'assets/images/blocks.jpg',
    'assets/images/steel slab.jpg',
    'assets/images/steel.jpg',
    'assets/images/paint.jpg',
    'assets/images/RCC Slab Concrete.jpg',
    'assets/images/areas.jpg',
    'assets/images/unit converter.jpg',
  ];
  final List<Widget> _widgetOptions = [
    const ConcreteUnit(),
    const BricksUnit(),
    const Tiles(),
    const PlasterScreen(),
    const Blocks(),
    const SteelSlabs(),
    const Steel(),
    const PaintScreen(),
    const RCCSlabScreen(),
    const Area(),
    const UnitConverter(),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        scaffoldChild: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: GridView.count(
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(
                imagesPaths.length,
                (index) => FutureBuilder(
                      builder: (context, snapshot) {
                        return snapshot.connectionState ==
                                ConnectionState.waiting
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : GestureDetector(
                                onTap: () {
                                  Get.to(()=>_widgetOptions[index],
                                      duration:
                                          const Duration(milliseconds: 400),
                                      transition: Transition.fadeIn);
                                },
                                child: Container(
                                  height: screenHeight * 0.1,
                                  width: screenWidth * 0.1,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            imagesPaths[index],
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              );
                      },
                      future: null,
                    )),
          ),
        ),
        title: 'Construction Calculator');
  }
}
