import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
        color: const Color(0xFF064061),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w500);
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
        color: const Color(0xFF064061),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
        color: const Color(0xFF4EB7F2),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w700);
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
        color: const Color(0xFF064061),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, baseFontSize: 20),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
        color: const Color(0xFFAAAAAA),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, baseFontSize: 12),
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
        color: const Color(0xFF4EB7F2),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, baseFontSize: 24),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
        color: const Color(0xFFAAAAAA),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, baseFontSize: 14),
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
        color: const Color(0xFFFFFFFF),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, baseFontSize: 18),
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
        color: const Color(0xFFFFFFFF),
        fontFamily: 'Montserrat',
        fontSize: getResponsiveFontSize(context, baseFontSize: 20),
        fontWeight: FontWeight.w500);
  }
}

double getResponsiveFontSize(BuildContext context,
    {required double baseFontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
  double maxFontSize = baseFontSize * 1;
  double minFontSize = baseFontSize * 0.8;

  return responsiveFontSize.clamp(minFontSize, maxFontSize);
}

double getScaleFactor(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.mobile) {
    return width / 400;
  } else if (width < SizeConfig.tablet) {
    return width / 800;
  } else {
    return width / 1365;
  }
}
