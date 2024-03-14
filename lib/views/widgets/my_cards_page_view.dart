import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: PageView.builder(
        controller: pageController,
        itemBuilder: (context, index) => const MyCard(),
        itemCount: 3,
      ),
    );
  }
}
