import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_button.dart';

class QuickInvoiceButtonAndTextButton extends StatelessWidget {
  const QuickInvoiceButtonAndTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          text: 'Add more details',
          textColor: Color(0xFF4DB7F2),
          backgourndColor: Colors.transparent,
        )),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: CustomButton(
          text: 'Send Money',
        ))
      ],
    );
  }
}
