import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/views/widgets/inceome_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    print(width);
    return width >= SizeConfig.tablet && width < 1100
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16.0),
            child: DetailedIncomeChart(),
          ))
        : const Row(
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(
                width: 2,
              ),
              SizedBox(
                width: 6,
              ),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
