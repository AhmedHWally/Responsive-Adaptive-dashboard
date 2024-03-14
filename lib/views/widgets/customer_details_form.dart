import 'package:flutter/material.dart';

import 'package:responsive_dash_board/views/widgets/customer_details_form_item.dart';

class CustomerDetailsForm extends StatelessWidget {
  const CustomerDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CustomerDetailsFormItem(
                    text: 'Customer name', hintText: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomerDetailsFormItem(
                    text: 'Customer Email', hintText: 'Type customer email'))
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Expanded(
                child: CustomerDetailsFormItem(
                    text: 'Item name', hintText: 'Type item name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: CustomerDetailsFormItem(
                    text: 'Item mount', hintText: 'USD'))
          ],
        ),
        SizedBox(
          height: 6,
        ),
      ],
    );
  }
}
