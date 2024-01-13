import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/styles.dart';
import 'package:flutter_application_1/features/ui/onBoarding/widgets/doclogo.dart';
import 'package:flutter_application_1/features/ui/onBoarding/widgets/get_started_button.dart';
import 'package:flutter_application_1/features/ui/onBoarding/widgets/image_and_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            DocLogo(),
            SizedBox(
              height: 30.h,
            ),
            DoctorImageAndText(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: TextStyles.font13GrayRegular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  GetStartedButton(),
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }
}
