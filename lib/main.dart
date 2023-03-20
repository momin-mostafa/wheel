import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wheel/data/controller.dart';
import 'interface.dart';

void main() {
  Get.lazyPut(() => WheelController());
  runApp(const Init());
}

class Init extends StatelessWidget {
  const Init({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Wheel(),
    );
  }
}
