import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Home/home.dart';
import '../../budgets/budgets.dart';
import '../../calander/calander.dart';

import '../../screens/credit_card_screen.dart';
import '../../screens/new_subs_screen.dart';
import '../constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Budgets(),
    Calander(),
     const CreditCardScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: myblack,
          body: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _selectedIndex = index);
            },
            children: _widgetOptions,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: InkWell
            (
            onTap:  ()
            {
              Navigator.push(context,MaterialPageRoute(builder:(context) => const NewSubsScreen(),));
            },
            child: const CircleAvatar
              (
              backgroundColor: myorange,
              radius: 30,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ) ,
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
            color: myblack,
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            shadowColor: myblack,
            clipBehavior: Clip.antiAlias,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BottomNavigationBar(
                backgroundColor: myblack ,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: GestureDetector(
                      onTap: () => _onItemTapped(0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: SvgPicture.asset('images/home.svg'),
                      ),
                    ),
                    activeIcon: GestureDetector(
                      onTap: () => _onItemTapped(0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: SvgPicture.asset('images/activeHome.svg'),
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: GestureDetector(
                      onTap: () => _onItemTapped(1),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: SvgPicture.asset('images/budgets.svg'),
                      ),
                    ),
                    activeIcon: GestureDetector(
                      onTap: () => _onItemTapped(1),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: SvgPicture.asset('images/activeBudgets.svg'),
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: GestureDetector(
                      onTap: () => _onItemTapped(2),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: SvgPicture.asset('images/Calendar.svg'),
                      ),
                    ),
                    activeIcon: GestureDetector(
                      onTap: () => _onItemTapped(2),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: SvgPicture.asset('images/activeCalendar.svg'),
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: GestureDetector(
                      onTap: () => _onItemTapped(3),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SvgPicture.asset('images/Credit Cards.svg'),
                      ),
                    ),
                    activeIcon: GestureDetector(
                      onTap: () => _onItemTapped(3),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SvgPicture.asset('images/activeCredit Cards.svg'),
                      ),
                    ),
                    label: '',
                    backgroundColor: const Color(0xff1c1c23),
                  ),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                enableFeedback: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Container(
// decoration: BoxDecoration(
// // shape: BoxShape.circle,
// borderRadius: BorderRadius.circular(45),
// boxShadow: [
// BoxShadow(
// color: myorange.withOpacity(0.3),
// spreadRadius: 5,
// blurRadius: 10,
// offset: const Offset(0, 3),
// ),
// ],
// ),
// child: FloatingActionButton(
//
// elevation: 0,
//
// ),
// ),
