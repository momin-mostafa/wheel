import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wheel/data/controller.dart';
import 'package:wheel/widget/background.dart';
import 'package:wheel/widget/foreground.dart';

class Wheel extends GetView<WheelController> {
  const Wheel({super.key, this.onSelect});
  final Function()? onSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Background(
              onSelect: onSelect,
            ),
            Align(
              alignment: Alignment.center,
              child: ForeGroundWheel(
                onSelect: onSelect,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/center_logo.png',
                height: 60,
                width: 60,
              ),
            )
          ],
        ),
      ),
    );
  }
}
