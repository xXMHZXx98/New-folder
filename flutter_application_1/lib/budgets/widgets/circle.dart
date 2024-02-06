import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../core/constants.dart';

class CircleProgressGraph extends StatelessWidget {
  const CircleProgressGraph({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 35,
        left: 82,
        child: Center(
          child: SleekCircularSlider(
            appearance: CircularSliderAppearance(
              startAngle: 180,
              angleRange: 180,
              customWidths: CustomSliderWidths(
                progressBarWidth: 15,
                trackWidth: 10,
                handlerSize: 0,
                shadowWidth: 0,
              ),
              size: 250,
              animationEnabled: true,
              customColors: CustomSliderColors(
                  trackColors: [greyContainer, greyContainer],
                  progressBarColors: [greyContainer, greyContainer],
                  hideShadow: false),
              infoProperties: InfoProperties(
                topLabelText: '',
                modifier: (percentage) => '',
              ),
            ),
            initialValue: 0,
            onChange: (double value) {
              print(value);
            },
          ),
        ),
      ),
      Positioned(
        top: 35,
        left: 82,
        child: Center(
          child: SleekCircularSlider(
            appearance: CircularSliderAppearance(
              startAngle: 180,
              angleRange: 180,
              customWidths: CustomSliderWidths(
                progressBarWidth: 15,
                trackWidth: 10,
                handlerSize: 0,
                shadowWidth: 0,
              ),
              size: 250,
              animationEnabled: false,
              customColors: CustomSliderColors(
                  trackColors: [greyContainer, greyContainer],
                  progressBarColors: [mypurple, mypurple],
                  hideShadow: false),
              infoProperties: InfoProperties(
                bottomLabelText: '',
                bottomLabelStyle: TextStyle(color: greyText, fontSize: 14),
                modifier: (percentage) => '',
                mainLabelStyle: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            initialValue: 45,
            onChange: (double value) {
              print(value);
            },
          ),
        ),
      ),
      Positioned(
        top: 35,
        left: 82,
        child: Center(
          child: SleekCircularSlider(
            appearance: CircularSliderAppearance(
              startAngle: 265,
              angleRange: 90,
              customWidths: CustomSliderWidths(
                progressBarWidth: 15,
                trackWidth: 10,
                handlerSize: 0,
                shadowWidth: 0,
              ),
              size: 250,
              animationEnabled: false,
              customColors: CustomSliderColors(
                  trackColors: [greyContainer, greyContainer],
                  progressBarColors: [mygreen, mygreen],
                  hideShadow: false),
              infoProperties: InfoProperties(
                bottomLabelText: '',
                bottomLabelStyle: TextStyle(color: greyText, fontSize: 14),
                modifier: (percentage) => '',
                mainLabelStyle: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            initialValue: 20,
            onChange: (double value) {
              print(value);
            },
          ),
        ),
      ),
      Positioned(
        top: 35,
        left: 82,
        child: Center(
          child: SleekCircularSlider(
            appearance: CircularSliderAppearance(
              startAngle: 285,
              angleRange: 70,
              customWidths: CustomSliderWidths(
                progressBarWidth: 15,
                trackWidth: 10,
                handlerSize: 0,
                shadowWidth: 0,
              ),
              size: 250,
              animationEnabled: false,
              customColors: CustomSliderColors(
                  trackColors: [greyContainer, greyContainer],
                  progressBarColors: [myorange, myorange],
                  hideShadow: false),
              infoProperties: InfoProperties(
                bottomLabelText: '',
                bottomLabelStyle: TextStyle(color: greyText, fontSize: 14),
                modifier: (percentage) => '',
                mainLabelStyle: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            initialValue: 40,
            onChange: (double value) {
              print(value);
            },
          ),
        ),
      ),
      Positioned(
        top: 35,
        left: 82,
        child: Center(
          child: SleekCircularSlider(
            appearance: CircularSliderAppearance(
              startAngle: 180,
              angleRange: 180,
              customWidths: CustomSliderWidths(
                progressBarWidth: 0,
                trackWidth: 0,
                handlerSize: 0,
                shadowWidth: 0,
              ),
              size: 250,
              animationEnabled: false,
              customColors: CustomSliderColors(
                  trackColors: [Colors.transparent, Colors.transparent],
                  progressBarColors: [Colors.transparent, Colors.transparent],
                  hideShadow: false),
              infoProperties: InfoProperties(
                bottomLabelText: '',
                bottomLabelStyle: TextStyle(color: greyText, fontSize: 14),
                modifier: (percentage) => '',
                mainLabelStyle: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            initialValue: 0,
            onChange: (double value) {
              print(value);
            },
          ),
        ),
      ),
      Positioned(
          top: 85,
          left: 140,
          child: Column(
            children: [
              Text(
                '82,87 SP',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'of 2,000 SP budget',
                style: TextStyle(fontSize: 14, color: greyText),
              ),
            ],
          )),
      Positioned(
        top: 200,
        left: 40,
        child: Container(
          height: 60,
          width: 330,
          child: SvgPicture.asset('images/Info.svg'),
        ),
      ),
    ]);
  }
}
