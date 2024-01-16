import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/colors.dart';
import 'package:flutter_application_1/core/theme/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObsecureText;
  final Widget suffixIcon;
  final Color? backgroundColor;
  AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObsecureText,
      required this.suffixIcon,
      this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsManager.mainBlue, width: 1.3),
                  borderRadius: BorderRadius.circular(16)),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorsManager.lightergray, width: 1.3),
              borderRadius: BorderRadius.circular(16)),
          hintStyle: hintStyle ?? TextStyles.font13GrayRegular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: backgroundColor ?? ColorsManager.greyform),
      obscureText: isObsecureText ?? false,
      style: TextStyles.font14DarkBlueMeduim,
    );
  }
}
