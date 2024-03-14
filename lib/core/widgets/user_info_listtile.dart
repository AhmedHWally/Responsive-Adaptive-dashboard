import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key, required this.userInfoModel, this.isDrawerHeader = false});

  final UserInfoModel userInfoModel;
  final bool isDrawerHeader;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        contentPadding: isDrawerHeader ? EdgeInsets.zero : null,
        leading: SvgPicture.asset(
          userInfoModel.image,
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            userInfoModel.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
