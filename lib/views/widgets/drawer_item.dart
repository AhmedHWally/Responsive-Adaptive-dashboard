import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, this.isActive = false, required this.drawerItemModel});

  final bool isActive;
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 4, right: 8),
      color: isActive ? const Color(0xFF4EB7F2) : null,
      child: ListTile(
        minVerticalPadding: 0,
        contentPadding: EdgeInsets.zero,
        leading: SvgPicture.asset(
          drawerItemModel.image,
          colorFilter: isActive
              ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
              : null,
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            drawerItemModel.title,
            style: isActive
                ? AppStyles.styleBold16(context).copyWith(color: Colors.white)
                : AppStyles.styleRegular16(context),
          ),
        ),
      ),
    );
  }
}
