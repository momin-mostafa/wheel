import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wheel/controller.dart';
import 'package:wheel/widget/pie_sections.dart';

class ForeGroundWheel extends GetView<WheelController> {
  const ForeGroundWheel({super.key, this.onSelect});
  final Function()? onSelect;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(controller.foregroundRadius),
        // color: Colors.amber,
      ),
      height: controller.foregroundRadius * 2,
      width: controller.foregroundRadius * 2,
      child: GetBuilder<WheelController>(builder: (cntx) {
        return PieChart(PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (p0, p1) {
              controller.updateIndex(p1?.touchedSection?.touchedSectionIndex);
              if (onSelect != null) {
                onSelect!();
              }
            },
          ),
          borderData: FlBorderData(show: false),
          sectionsSpace: 0,
          centerSpaceRadius: 0,
          sections: getSections(context, controller.index ?? 0),
          // centerSpaceColor: Colors.red,
        ));
      }),
    );
  }
}
