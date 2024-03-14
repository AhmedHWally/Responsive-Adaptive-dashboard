import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/views/widgets/transaction_list_tile.dart';

class TransactionHistoryColumn extends StatelessWidget {
  const TransactionHistoryColumn({super.key});
  static const List<TransactionModel> transactions = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022',
        amount: r'$20,129',
        isWithDrawl: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
        isWithDrawl: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$20,129',
        isWithDrawl: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((e) {
        return TransactionListTile(transactionModel: e);
      }).toList(),
    );
  }
}
