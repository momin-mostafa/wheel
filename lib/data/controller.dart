import 'dart:developer';

import 'package:get/get.dart';
import 'package:wheel/data/color_resource.dart';
import 'package:wheel/data/data.dart';

class WheelController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    //for bluePart
    List<Data> listOfBackgroundSegment = [
      Data(name: 'hello', color: ColorResource.blue),
      Data(name: 'hi', color: ColorResource.blue),
      Data(name: 'ab', color: ColorResource.blue),
      Data(name: 'abc', color: ColorResource.blue),
      Data(name: 'abcd', color: ColorResource.blue),
      Data(name: 'abcde', color: ColorResource.blue),
      Data(name: 'abcdef', color: ColorResource.blue),
      Data(name: 'qwert', color: ColorResource.blue),
    ];
    PieData.dataBackground = listOfBackgroundSegment;

    //for foreground part
    List<Data> listOfForeGroundSegment = [
      Data(
          image:
              "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          color: ColorResource.green),
      Data(
          image:
              "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          color: ColorResource.lightGreen),
      Data(
          image:
              "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          color: ColorResource.green),
      Data(
          image:
              "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          color: ColorResource.lightGreen),
      Data(
          image:
              "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          color: ColorResource.green),
      Data(
          image:
              'https://png.pngtree.com/png-clipart/20220615/original/pngtree-mechanical-cogs-technology-vector-sketch-png-image_8037512.png',
          color: ColorResource.lightGreen),
      Data(
          image:
              'https://png.pngtree.com/png-clipart/20220616/original/pngtree-web-technology-gear-icon-png-image_8065756.png',
          color: ColorResource.green),
      Data(
          image:
              'https://png.pngtree.com/png-clipart/20220615/original/pngtree-mechanical-cogs-technology-vector-sketch-png-image_8037512.png',
          color: ColorResource.lightGreen),
    ];
    PieData.data = listOfForeGroundSegment;
  }

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
