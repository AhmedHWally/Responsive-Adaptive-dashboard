import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class TransactionsHistoryHeader extends StatelessWidget {
  const TransactionsHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Text(
          'See all',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xff4EB7F2)),
        )
      ],
    );
  }
}
