import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expanses_and_quick_invoice_section.dart';

import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';

import 'package:responsive_dash_board/views/widgets/my_cards_and_transaction_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 5,
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 12),
                        child:
                            AllExpansesAndQuickInvoiceSection(isDesktop: true),
                      )),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          MyCardsAndTransactionSection(),
                          SizedBox(
                            height: 18,
                          ),
                          Expanded(child: IncomeSection())
                        ],
                      ))
                ],
              ),
            )
          ]),
        ),
      ],
    );
  }
}
