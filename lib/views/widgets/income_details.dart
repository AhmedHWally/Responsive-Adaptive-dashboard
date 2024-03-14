import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';
import 'package:responsive_dash_board/views/widgets/income_chart_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeItemModel(
        title: 'Design service', value: '40', color: Color(0xff208CC8)),
    IncomeItemModel(
        title: 'Design product', value: '25', color: Color(0xff4EB7F2)),
    IncomeItemModel(
        title: 'Product royalti', value: '20', color: Color(0xff064061)),
    IncomeItemModel(title: 'Other', value: '22', color: Color(0xffE2DECD))
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => IncomeChartDetailsItem(item: e)).toList(),
    );
  }
}
