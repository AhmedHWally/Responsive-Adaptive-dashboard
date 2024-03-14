import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/my_card_section.dart';
import 'package:responsive_dash_board/views/widgets/transactions_history_section.dart';

class MyCardsAndTransactionSection extends StatelessWidget {
  const MyCardsAndTransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBackGroundContainer(
            padding: 16,
            child: Column(
              children: [
                MyCardSection(),
                Divider(
                  height: 20,
                  color: Color(0xffF1F1F1),
                ),
                TransactionsHistorySection()
              ],
            ))
      ],
    );
  }
}
