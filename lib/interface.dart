import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wheel/controller.dart';
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
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   print(controller.debug);
      // }),
    );
  }
}
