import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:wheel/data/controller.dart';
import 'package:wheel/data/data.dart';

List<PieChartSectionData> getSections(BuildContext context, int touchedIndex) =>
    PieData.data
        .asMap()
        .map<int, PieChartSectionData>((index, data) {
          double radius = Get.find<WheelController>().foregroundRadius;
          double fontSize = 14;
          if (Get.find<WheelController>().selectedList.contains(index)) {
            data.color = data.color;
            Get.find<WheelController>().update();
          } else {
            data.color = data.color?.withOpacity(0.5);
          }
          final value = PieChartSectionData(
            color: data.color,
            radius: radius,
            borderSide: const BorderSide(color: Colors.white),
            badgeWidget: Image.network(
              // for debug purpose :
              // "https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/How_to_use_icon.svg/1200px-How_to_use_icon.svg.png",
              data.image ?? '',
              height: 40,
              width: 50,
              // color: Colors.white,
              errorBuilder: (context, error, stackTrace) => Container(),
            ),
            badgePositionPercentageOffset: 0.7,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
              // leadingDistribution: TextLeadingDistribution.even,
              color: const Color(0xffffffff),
            ),
            titlePositionPercentageOffset: 0.71,
          );

          return MapEntry(index, value);
        })
        .values
        .toList();

List<PieChartSectionData> getBackgroundSections(
        BuildContext context, int touchedIndex) =>
    PieData.dataBackground
        .asMap()
        .map<int, PieChartSectionData>((index, data) {
          if (Get.find<WheelController>().selectedList.contains(touchedIndex)) {
            data.color = data.color;
            Get.find<WheelController>().update();
          } else {
            data.color = data.color?.withOpacity(0.5);
          }
          // if (index == touchedIndex) {
          //   Get.find<WheelController>().updateIndex(index);
          // }
          // final isTouched = index == touchedIndex;
          // final double fontSize = isTouched ? 25 : 16;
          // final double radius = isTouched ? 100 : 80;
          double radius = Get.find<WheelController>().radius;
          double fontSize = 16;

          final value = PieChartSectionData(
            color: data.color,
            value: data.percent,
            title: data.name,

            radius: radius,
            borderSide: const BorderSide(color: Colors.white),
            // badgeWidget: Image.network(
            //   "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            //   height: 40,
            //   width: 50,
            // ),
            // badgePositionPercentageOffset: 0.8,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
            titlePositionPercentageOffset: .8,
          );

          return MapEntry(index, value);
        })
        .values
        .toList();
