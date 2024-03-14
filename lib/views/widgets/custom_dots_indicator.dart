import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_dot_container.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CustomDotContainer(isActive: currentPage == index),
              )),
    );
  }
}
