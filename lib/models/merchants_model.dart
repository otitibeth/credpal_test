import 'package:flutter/animation.dart';

class Merchant {
  String logo;
  String name;
  Color? color;
  bool online = false;

  Merchant(
      {required this.name,
      required this.logo,
      this.color,
      required this.online});
}
