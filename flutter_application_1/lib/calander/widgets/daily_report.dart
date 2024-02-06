
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trackizer/core/constants.dart';

class DailyReport extends StatelessWidget {
  final String subName;
  final String svgPath;
  final String subPrice;

  DailyReport({
    required this.subName,
    required this.svgPath,
    required this.subPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: greyContainer),
      height: 80,
      width: 90,
      child: Row(
        children: [
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              SvgPicture.asset(svgPath),
              const Spacer(),
              Text(
                subName,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '$subPrice SP',
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 11,
              )
            ],
          ),
        ],
      ),
    );
  }
}
