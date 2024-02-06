import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trackizer/Home/widgets/dash_reports.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import '../../core/constants.dart';
import '../../screens/settings_screen.dart';

Widget slider(BuildContext context) {
  return Container(

    decoration: const BoxDecoration(
      color: greyContainer,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
    ),
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.65,
    child: Stack(
      children: [
        Positioned(
          left:MediaQuery.of(context).size.width * 0.01 ,
          right:MediaQuery.of(context).size.width * 0.01 ,
          top:MediaQuery.of(context).size.height * 0.04 ,
          bottom:MediaQuery.of(context).size.height * 0.1 ,

          child: Container(
            // alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height ,
            width: MediaQuery.of(context).size.width ,
            child: SvgPicture.asset(
              'images/Ellipse2.svg',
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.2,
          top: MediaQuery.of(context).size.height * 0.1,
          child: Container(
            alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'images/c.png',
                fit: BoxFit.fitWidth,
              )),
        ),

        Positioned(
          top: MediaQuery.of(context).size.height * 0.1,
          left: MediaQuery.of(context).size.width * 0.3,
          right: MediaQuery.of(context).size.width * 0.3,
          child: Container(
            alignment: Alignment.center,
              height: MediaQuery.of(context).size.width * 0.3,
              width: MediaQuery.of(context).size.width * 0.3,
              child: SvgPicture.asset(logo)),
        ),

        Positioned(
          top: MediaQuery.of(context).size.height * 0.03,
          left: MediaQuery.of(context).size.width * 0.06,
          right: MediaQuery.of(context).size.width * 0.06,
          child: Center(
            child: SleekCircularSlider(
              appearance: CircularSliderAppearance(
                startAngle: 142,
                angleRange: 260,
                customWidths: CustomSliderWidths(
                  progressBarWidth: 15,
                  trackWidth: 10,
                  handlerSize: 0,
                  shadowWidth: 0,
                ),
                size: MediaQuery.of(context).size.width ,
                animationEnabled: true,
                customColors: CustomSliderColors(
                    trackColors: [greyContainer, greyContainer],
                    progressBarColors: [myorange, myorange],
                    hideShadow: true),
                infoProperties: InfoProperties(
                  bottomLabelText: 'This month bills',
                  bottomLabelStyle: const TextStyle(color: greyText, fontSize: 14),
                  modifier: (percentage) => '1,235 SP',
                  mainLabelStyle: const TextStyle(
                      fontSize: 42,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              initialValue: 80,
              onChange: (double value) {

              },
            ),
          ),
        ),
        Positioned(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10,
              ),
              DashReport(
                  categoryColor: myorange,
                  categoryName: 'Active subs',
                  value: '12'),
              DashReport(
                  categoryColor: mypurple,
                  categoryName: 'Highest subs',
                  value: "19.99 SP"),
              DashReport(
                  categoryColor: mygreen,
                  categoryName: 'Lowest subs',
                  value: '5.99 SP'),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ) ,
        // see budget
        Positioned(
          top: MediaQuery.of(context).size.height * 0.4,
          left: MediaQuery.of(context).size.width * 0.3,
          right: MediaQuery.of(context).size.width * 0.3,
          child: Container(
                      decoration: const BoxDecoration(
          color: greyContainer,
          borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: const Center(
            child: Text(
          'See your budget',
          style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600),
                      )),
                    ),
        ),

        // setting
        Positioned(
            right: MediaQuery.of(context).size.width * 0.06,
            top: MediaQuery.of(context).padding.top + 16,
            child: InkWell(onTap: ()
            {
              Navigator.push(context,MaterialPageRoute(builder:(context) => const Settings(),));

            }, child: SvgPicture.asset('images/Settings.svg'))),
      ],
    ),
  );
}
