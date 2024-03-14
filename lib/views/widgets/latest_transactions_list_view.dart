import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/core/widgets/user_info_listtile.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';

class LatestTransactionsListView extends StatelessWidget {
  const LatestTransactionsListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail.com')
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}


// in case there is animation i can use this .. because the intrinsic widgets are expensive
//======================================================>
// class WidgetWithOutIntrinisicWidth extends StatelessWidget {
//   const WidgetWithOutIntrinisicWidth({super.key, required this.userInfoModel});
//   final UserInfoModel userInfoModel;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: const Color(0xFFFAFAFA),
//       elevation: 0,
//       child: Row(
//         children: [
//           SvgPicture.asset(userInfoModel.image),
//           const SizedBox(
//             width: 16,
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 userInfoModel.title,
//                 style: AppStyles.styleSemiBold16,
//               ),
//               Text(
//                 userInfoModel.subtitle,
//                 style: AppStyles.styleRegular12,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
