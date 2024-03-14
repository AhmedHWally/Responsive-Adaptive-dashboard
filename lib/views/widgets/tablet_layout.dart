import 'package:flutter/material.dart';

import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';

import 'package:responsive_dash_board/views/widgets/mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 24),
            child: MobileLayout(),
          ),
        ),
        SizedBox(
          width: 12,
        ),
      ],
    );
  }
}
