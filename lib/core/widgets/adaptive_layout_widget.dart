import 'package:flutter/material.dart';

class AadaptiveLayout extends StatelessWidget {
  const AadaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      //tablet break point 600
      if (constrains.maxWidth < 650) {
        return mobileLayout(context);
      } //desktop and web break point 900
      else if (constrains.maxWidth < 1000) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
