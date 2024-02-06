import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String progressText;
  final double progressValue;
  final Color containerColor;
  final Color progressColor;
  final String svgPath;
  final int ofvalue;

  CategoryWidget({
    required this.title,
    required this.subtitle,
    required this.progressText,
    required this.progressValue,
    required this.containerColor,
    required this.progressColor,
    required this.svgPath,
    required this.ofvalue,
  });
  @override
  Widget build(BuildContext context) {
    double progress = progressValue / 400; // Calculate the progress value

    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 95,
              width: 350,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(17),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      SvgPicture.asset(svgPath),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            progressText,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "of $ofvalue SP",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 13,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 70,
              left: 30,
              child: Container(
                height: 4,
                width: 300,
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(10),
                  value: progress,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(progressColor),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

Widget linearProgressBar(int value, Color color) {
  double progress = value / 400;

  return LinearProgressIndicator(
    value: progress,
    backgroundColor: Colors.grey,
    valueColor: AlwaysStoppedAnimation<Color>(
      color,
    ),
  );
}
