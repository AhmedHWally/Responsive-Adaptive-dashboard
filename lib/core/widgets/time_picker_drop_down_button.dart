import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class TimePickerDropDownButton extends StatelessWidget {
  const TimePickerDropDownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade100)),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff064061),
          )
        ],
      ),
    );
  }
}
