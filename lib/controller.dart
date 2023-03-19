import 'dart:developer';

import 'package:get/get.dart';

class WheelController extends GetxController {
  int? _index;

  int debug = 0;

  int? get index => _index;
  Set<int> selectedList = {};

  double radius = Get.size.width * .48;
  double foregroundRadius = Get.size.width * .3;

  void updateIndex(int? index) {
    if (index == null || index < 0) return;
    if (selectedList.contains(index)) selectedList.remove(index);
    // debug++;
    _index = index;
    selectedList.add(index);
    log("selected list $selectedList", name: "WheelController");
    update();
  }
}
