import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trackizer/calander/widgets/daily_report.dart';
import 'package:trackizer/calander/widgets/days_picker.dart';
import 'package:trackizer/calander/widgets/subscriptons.dart';
import 'package:intl/intl.dart';
import '../core/constants.dart';
import '../screens/settings_screen.dart';

class Calander extends StatefulWidget {
  @override
  _CalanderState createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
  DateTime selectedDate =
      DateTime.now(); // Default selected date is the current date
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  int selectedMonthIndex = DateTime.now().month - 1;
  String selectedMonth = DateFormat('MMMM').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myblack,
        elevation: 0,
        leading: const Text(''),
        title: const Text(
          'Calendar',
          style: TextStyle(
            color: greyText,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Settings(),
                    ));
              },
              child: SvgPicture.asset(
                'images/Settings.svg',
                width: 24,
              ),
            ),
          )
        ],
      ),
      backgroundColor: myblack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Light BG.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Subs\nSchedule',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 44,
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '3 subscriptions for today',
                          style: TextStyle(fontSize: 15, color: greyText),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: greyContainer,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              DropdownButton<String>(
                                underline: Container(),
                                icon: Container(
                                    child: SvgPicture.asset(
                                        'images/Arrow Small.svg')),
                                borderRadius: BorderRadius.circular(10),
                                dropdownColor: myblack,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                                value: selectedMonth,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedMonth = newValue!;
                                    selectedMonthIndex =
                                        months.indexOf(selectedMonth);
                                  });
                                },
                                items: months.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    DaysPicker(
                      selectedDate: selectedDate,
                      selectedMonthIndex: selectedMonthIndex,
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DateFormat('MMMM').format(DateTime.now()),
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        DateFormat(
                          'dd.MM.20yy',
                        ).format(DateTime.now()),
                        style: const TextStyle(fontSize: 14, color: greyText),
                      ),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '24.98 SP',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'in upcoming bills',
                        style: TextStyle(fontSize: 14, color: greyText),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                children: [
                  DailyReport(
                      subName: 'Spotify', svgPath: spotify, subPrice: '5.23'),
                  DailyReport(
                      subName: 'YouTube Premium',
                      svgPath: youtube,
                      subPrice: '5.23'),
                  DailyReport(
                      subName: 'One drive', svgPath: onedrive, subPrice: '5.23')
                ]),
          ],
        ),
      ),
    );
  }
}
