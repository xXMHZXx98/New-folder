import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import '../../core/constants.dart';

class DaysPicker extends StatelessWidget {
  const DaysPicker({
    Key? key,
    required this.selectedDate,
    required this.selectedMonthIndex,
  }) : super(key: key);

  final DateTime selectedDate;
  final int selectedMonthIndex;

  @override
  Widget build(BuildContext context) {
    final int daysInMonth = DateTime(
      selectedDate.year,
      selectedMonthIndex + 1,
      0,
    ).day;

    final int currentDay = selectedDate.day;

    return Container(
      height: 115,
      width: 410,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: daysInMonth - currentDay + 1,
        itemBuilder: (context, index) {
          int day = currentDay + index;
          bool isSelected = day == selectedDate.day;
          Color containerColor =
              isSelected ? Color(0xFF4E4E61) : Color(0xFF4E4E6);
          String dayText = day < 10 ? '0$day' : '$day';
          String dayOfWeek = DateFormat('EEE')
              .format(DateTime(selectedDate.year, selectedMonthIndex + 1, day))
              .substring(0, 2);
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: containerColor,
              ),
              height: 104,
              width: 48,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      dayText,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      dayOfWeek,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: greyText,
                      ),
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Visibility(
                      visible: isSelected,
                      child: Container(
                        width: 6,
                        child: SvgPicture.asset(
                          'images/Vector.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
