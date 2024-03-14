import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({
    super.key,
  });

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: activeIndex == 0 ? 'Design service' : '40%',
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          value: 40,
          radius: activeIndex == 0 ? 50 : 40,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          title: activeIndex == 1 ? 'Design product' : '25%',
          titlePositionPercentageOffset: activeIndex == 1 ? 2.35 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          value: 25,
          radius: activeIndex == 1 ? 50 : 40,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          value: 20,
          radius: activeIndex == 2 ? 50 : 40,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          title: activeIndex == 3 ? 'Other' : '22%',
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 3 ? null : Colors.white),
          value: 22,
          radius: activeIndex == 3 ? 50 : 40,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
