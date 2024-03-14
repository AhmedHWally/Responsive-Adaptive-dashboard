import 'package:flutter/material.dart';

abstract class SizeConfig {
  static const double mobile = 650;
  static const double tablet = 1000;
  static late double width, height;
  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
