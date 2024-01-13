import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/colors.dart';
import 'package:flutter_application_1/core/theme/styles.dart';

class GetStartedButton extends StatelessWidget {
  GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStatePropertyAll(
            Size(double.infinity, 52),
          ),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      child: Text('Get Started', style: TextStyles.font16WhiteSemi),
    );
  }
}
