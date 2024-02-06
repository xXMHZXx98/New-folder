import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/constants.dart';
import '../screens/settings_screen.dart';
import 'budget_screen.dart';

class Budgets extends StatefulWidget {
  @override
  State<Budgets> createState() => _MainPageContentState();
}

class _MainPageContentState extends State<Budgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myblack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Spending & Budgets',
          style: TextStyle(color: greyText, fontSize: 18),
        ),
        leading: Text(''),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Settings(),
                    ));
              },
              child: SvgPicture.asset('images/Settings.svg')),
          const SizedBox(
            width: 25,
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              slider1,
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
