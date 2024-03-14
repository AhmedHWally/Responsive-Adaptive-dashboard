import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expanses_widget.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

class AllExpansesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpansesAndQuickInvoiceSection({
    super.key,
    this.isDesktop = false,
  });
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const AllExpenses(),
      const SizedBox(
        height: 12,
      ),
      if (isDesktop == true)
        Expanded(
            child: QuickInvoice(
          isDesktop: isDesktop,
        )),
      if (isDesktop == false) const QuickInvoice(),
      const SizedBox(
        height: 24,
      ),
    ]);
  }
}
