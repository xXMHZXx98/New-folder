
import 'package:flutter/material.dart';
import 'package:trackizer/core/constants.dart';
import 'package:trackizer/calander/widgets/daily_report.dart';

class Subscriptions extends StatelessWidget {
  const Subscriptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView(
        shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          children: [
            DailyReport(
                subName: 'Spotify',
                svgPath: spotify,
                subPrice: '5.23'),
            DailyReport(
                subName: 'YouTube Premium',
                svgPath: youtube,
                subPrice: '5.23'),
            DailyReport(
                subName: 'One drive',
                svgPath: onedrive,
                subPrice: '5.23')
          ]),
    );
  }
}
