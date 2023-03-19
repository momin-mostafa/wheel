import 'dart:ui';

import 'package:wheel/data/data.dart';

class Element implements Data {
  @override
  Color? color;

  @override
  String? name;

  @override
  double? percent;
  final String? imageUrl;

  Element({
    this.imageUrl,
    this.name,
    this.color,
    this.percent,
  });
}
