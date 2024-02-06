import 'package:flutter/material.dart';
import 'package:trackizer/core/constants.dart';

class DashReport extends StatelessWidget {
  const DashReport({
    super.key,
    required this.categoryColor,
    required this.categoryName,
    required this.value,
  });
  final Color categoryColor;
  final String categoryName;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: greyContainer,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              height: 70,
              width: 110,
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 2,
                    decoration: BoxDecoration(color: categoryColor),
                  ),
                  Spacer(),
                  Center(
                      child: Column(
                    children: [
                      Text(
                        categoryName,
                        style: TextStyle(color: greyText, fontSize: 13),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        value,
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        )
      ],
    );
  }
}
