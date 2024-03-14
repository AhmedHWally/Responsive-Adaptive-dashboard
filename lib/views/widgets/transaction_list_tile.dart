import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({
    super.key,
    required this.transactionModel,
  });
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: transactionModel.isWithDrawl
              ? AppStyles.styleSemiBold20(context)
                  .copyWith(color: const Color(0xffF3735E))
              : AppStyles.styleSemiBold20(context)
                  .copyWith(color: const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
