import 'package:flutter/material.dart';

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer(
      {super.key, required this.child, this.padding});
  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      padding: EdgeInsets.all(padding ?? 20),
      child: child,
    );
  }
}
