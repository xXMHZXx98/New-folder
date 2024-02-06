import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trackizer/budgets/widgets/category.dart';
import 'package:trackizer/budgets/widgets/circle.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';
import '../core/constants.dart';

Widget slider1 = Center(
  child: Column(
    children: [
      Container(
        width: double.infinity,
        height: 290,
        child: CircleProgressGraph(),
      ),
      SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                CategoryWidget(
                  title: 'Auto & Transport',
                  subtitle: '375 SP left to spend',
                  progressText: '25.99 SP',
                  progressValue: 222,
                  containerColor: greyContainer,
                  progressColor: mypurple,
                  svgPath: 'images/Auto & Transport.svg',
                  ofvalue: 400,
                ),
                CategoryWidget(
                  title: 'Auto & Transport',
                  subtitle: '375 SP left to spend',
                  progressText: '25.99 SP',
                  progressValue: 22,
                  containerColor: greyContainer,
                  progressColor: mygreen,
                  svgPath: 'images/Entertainment.svg',
                  ofvalue: 600,
                ),
                CategoryWidget(
                  title: 'Auto & Transport',
                  subtitle: '375 SP left to spend',
                  progressText: '25.99 SP',
                  progressValue: 122,
                  containerColor: greyContainer,
                  progressColor: myorange,
                  svgPath: 'images/fi-rr-fingerprint.svg',
                  ofvalue: 600,
                ),
                Container(
                    decoration: BoxDecoration(
                      border: DashedBorder.fromBorderSide(
                          dashLength: 5,
                          side: BorderSide(
                            color: greyContainer,
                            width: 1,
                          )),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 85,
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Text('Add new category',
                            style: TextStyle(color: greyText, fontSize: 16)),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 16,
                            child: SvgPicture.asset('images/Add.svg')),
                        Spacer()
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    ],
  ),
);
