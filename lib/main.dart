import 'package:construction_app/View/Home%20Screen/Construction%20Calculator/Bricks/Bricks%20Unit/bricks_unit.dart';
import 'package:construction_app/View/Splash%20Screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BricksUnit(),
    );
  }
}
