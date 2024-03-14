import 'package:flutter/material.dart';

import 'package:responsive_dash_board/core/utils/app_images.dart';

import 'package:responsive_dash_board/core/widgets/user_info_listtile.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';
import 'package:responsive_dash_board/views/widgets/drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          SliverToBoxAdapter(
            child: UserInfoListTile(
              isDrawerHeader: true,
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com'),
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 20,
                  )),
                  DrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSettings, title: 'Setting system'),
                  ),
                  DrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout account', image: Assets.imagesLogout),
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 20,
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
