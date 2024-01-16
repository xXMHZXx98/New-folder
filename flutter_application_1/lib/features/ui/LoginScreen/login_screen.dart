import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/spacing.dart';
import 'package:flutter_application_1/core/theme/styles.dart';
import 'package:flutter_application_1/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObsecureText = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font23BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last\nlogged in.',
                  style: TextStyles.font13GrayRegular,
                ),
                verticalSpace(36),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(
                          hintText: 'Email',
                          suffixIcon: Icon(Icons.email),
                        ),
                        verticalSpace(18),
                        AppTextFormField(
                          isObsecureText: isObsecureText,
                          hintText: 'Password',
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isObsecureText = !isObsecureText;
                                });
                              },
                              child: Icon(isObsecureText
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                        ),
                        verticalSpace(24),
                        Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'Forget Password?',
                              style: TextStyles.font13DBlueRegular,
                            ))
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
