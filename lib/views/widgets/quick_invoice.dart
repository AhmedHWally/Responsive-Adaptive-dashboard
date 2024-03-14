import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/customer_details_form.dart';
import 'package:responsive_dash_board/views/widgets/latest_transactions.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_button_and_textbutton.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key, this.isDesktop = false});
  final bool isDesktop;
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      padding: 14,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(
            height: 10,
          ),
          const LatestTransactions(),
          const Divider(
            height: 20,
            color: Color(0xffF1F1F1),
          ),
          const CustomerDetailsForm(),
          if (isDesktop == true)
            const Expanded(child: QuickInvoiceButtonAndTextButton()),
          if (isDesktop == false) const QuickInvoiceButtonAndTextButton()
        ],
      ),
    );
  }
}
