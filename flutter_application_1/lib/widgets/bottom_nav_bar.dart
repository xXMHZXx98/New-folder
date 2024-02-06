import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
      shape: const CircularNotchedRectangle(),
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      notchMargin: 8,
      clipBehavior: Clip.antiAlias,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(Icons.circle),
                ),
              ),
              activeIcon: GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.home,
                    color: Color(0xFFA2A2B5),
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(right: 32.0),
                  child: Icon(
                    Icons.grid_view_rounded,
                    color: Color(0xFFA2A2B5),
                  ),
                ),
              ),
              activeIcon: GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(right: 32.0),
                  child: Icon(
                    Icons.circle,
                    color: Color(0xFFA2A2B5),
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(left: 32.0),
                  child: Icon(
                    Icons.calendar_month,
                    color: Color(0xFFA2A2B5),
                  ),
                ),
              ),
              activeIcon: GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(left: 32.0),
                  child: Icon(
                    Icons.circle,
                    color: Color(0xFFA2A2B5),
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.credit_card,
                    color: Color(0xFFA2A2B5),
                  ),
                ),
              ),
              activeIcon: GestureDetector(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.circle),
                ),
              ),
              label: '',
              backgroundColor: Colors.transparent,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          enableFeedback: false,
          backgroundColor: const Color(0xFF4E4E61),
        ),
      ),
    );
  }
}
