import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocLogo extends StatelessWidget {
  const DocLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('images/Group.svg'),
        SizedBox(
          width: 10.w,
        ),
        Text(
          "DocDoc",
          style: TextStyles.font24BlackBold,
        )
      ],
    );
  }
}
