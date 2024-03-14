import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

import 'package:responsive_dash_board/views/widgets/transaction_history_list_view.dart';

import 'package:responsive_dash_board/views/widgets/transactions_history_header.dart';

class TransactionsHistorySection extends StatelessWidget {
  const TransactionsHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionsHistoryHeader(),
        const SizedBox(
          height: 10,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(
          height: 8,
        ),
        const TransactionHistoryColumn()
      ],
    );
  }
}
