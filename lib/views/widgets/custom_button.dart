import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgourndColor, this.textColor, required this.text});
  final Color? backgourndColor, textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: backgourndColor ?? const Color(0xff4EB7F2),
            elevation: 0,
            shadowColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style:
                AppStyles.styleSemiBold18(context).copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
