import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wheel/controller.dart';

import 'pie_sections.dart';

class Background extends GetView<WheelController> {
  const Background({super.key, this.onSelect});
  final Function()? onSelect;
  @override
  Widget build(BuildContext context) {
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
      sections: getBackgroundSections(context, controller.index ?? 0),
      // centerSpaceColor: Colors.red,
    ));
  }
}
