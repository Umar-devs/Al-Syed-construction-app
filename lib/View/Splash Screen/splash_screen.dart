// ignore_for_file: prefer_const_constructors
import 'package:construction_app/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Home Screen/Construction Calculator/construction_calculator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Get.offAll(()=>ConstructionCalculator(),
          transition: Transition.fadeIn,
          duration: Duration(milliseconds: 700));
    });
    return Container(
      height: screenHeight,
      width: screenWidth,
      color: Color(0xff007deb),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: screenHeight * 0.1,
            width: screenWidth*0.7,
            child:
                Image.asset('assets/images/al_syed-construction-logo (1).png',fit: BoxFit.fill,),
          ),
        ],
      ),
    );
  }
}
