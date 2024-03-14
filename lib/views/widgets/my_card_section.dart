import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/custom_dots_indicator.dart';
import 'package:responsive_dash_board/views/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      if (pageController.page!.round() != currentPageIndex) {
        currentPageIndex = pageController.page!.round();
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 16,
        ),
        CardPageView(pageController: pageController),
        const SizedBox(
          height: 10,
        ),
        CustomDotsIndicator(
          currentPage: currentPageIndex,
        )
      ],
    );
  }
}
