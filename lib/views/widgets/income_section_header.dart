import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/core/widgets/time_picker_drop_down_button.dart';

class IncomSectionHeader extends StatelessWidget {
  const IncomSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const TimePickerDropDownButton()
      ],
    );
  }
}
