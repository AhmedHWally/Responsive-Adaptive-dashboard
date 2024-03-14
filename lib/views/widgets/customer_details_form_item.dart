import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class CustomerDetailsFormItem extends StatelessWidget {
  const CustomerDetailsFormItem(
      {super.key, required this.text, required this.hintText});
  final String text, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextFeild(
          hintText: hintText,
        )
      ],
    );
  }
}

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          fillColor: const Color(0xffFAFAFA),
          filled: true,
          hintText: hintText,
          hintStyle: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}
