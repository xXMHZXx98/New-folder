import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font23BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.gray,
  );
  static TextStyle font16WhiteSemi = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
