import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theme/styles.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("images/low_opacity_logo.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white.withOpacity(0.0)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.14, 0.4]),
          ),
          child: Image.asset('images/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font23BlueBold.copyWith(height: 1.4),
          ),
        )
      ],
    );
  }
}
