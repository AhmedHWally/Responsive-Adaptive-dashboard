import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';

class IncomeChartDetailsItem extends StatelessWidget {
  const IncomeChartDetailsItem({super.key, required this.item});
  final IncomeItemModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 6,
        backgroundColor: item.color,
      ),
      title: Text(
        item.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        '${item.value}%',
        style: AppStyles.styleMedium16(context),
      ),
    );

    // FittedBox(
    //   fit: BoxFit.scaleDown,
    //   child: Row(
    //     children: [
    //       CircleAvatar(
    //         radius: 6,
    //         backgroundColor: item.color,
    //       ),
    //       const SizedBox(
    //         width: 4,
    //       ),
    //       Text(
    //         item.title,
    //         style: AppStyles.styleRegular16(context),
    //       ),
    //       Text(
    //         '${item.value}%',
    //         style: AppStyles.styleMedium16(context),
    //       )
    //     ],
    //   ),
    // );
  }
}
