import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/core/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: SizeConfig.width < SizeConfig.mobile
          ? Colors.white
          : const Color(0xFFF7F9FA),
      drawer:
          SizeConfig.width < SizeConfig.mobile ? const CustomDrawer() : null,
      appBar: SizeConfig.width < SizeConfig.mobile
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFF4EB7F2),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 28,
                  )),
            )
          : null,
      body: AadaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout()),
    );
  }
}
