import 'package:flutter/material.dart';

import 'color_resource.dart';

class PieData {
  static List<Data> data = [
    Data(color: ColorResource.green),
    Data(color: ColorResource.lightGreen),
    Data(color: ColorResource.green),
    Data(color: ColorResource.lightGreen),
    Data(color: ColorResource.green),
    Data(color: ColorResource.lightGreen),
    Data(color: ColorResource.green),
    Data(color: ColorResource.lightGreen),
  ];
  static List<Data> dataBackground = [
    Data(color: ColorResource.blue),
    Data(color: ColorResource.blue),
    Data(color: ColorResource.blue),
    Data(color: ColorResource.blue),
    Data(color: ColorResource.blue),
    Data(color: ColorResource.blue),
    Data(color: ColorResource.blue),
    Data(color: ColorResource.blue),
  ];
  static setData(Data model, int index) {
    data[index] = model;
  }
}

class Data {
  String? name;

  double? percent;

  Color? color;

  String? image;

  Data({
    name = 'Social Development',
    this.percent = 12.5,
    this.color,
    this.image,
  }) {
    if (name == null) return;
    String temp = '';
    for (var i = 0; i < name!.length; i++) {
      if (i == 7 || i == 14) {
        temp += '-\n';
      }
      temp += name[i];
    }
    this.name = temp;
  }
}
