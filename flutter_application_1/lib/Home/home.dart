import 'package:flutter/material.dart';
import '../core/constants.dart';
import 'widgets/circle.dart';
import 'widgets/upcoming.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedButtonIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myblack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: slider(context)),
            const SizedBox(
              height: 20,
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff0E0E12),
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButtonIndex = 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedButtonIndex == 1
                            ? const Color.fromARGB(255, 25, 25, 31)
                            : const Color(0xff0E0E12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: const SizedBox(
                        height: 25,
                        width: 130,
                        child: Center(
                          child: Text(
                            'Your subscriptions',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButtonIndex = 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedButtonIndex == 2
                            ? const Color.fromARGB(255, 25, 25, 31)
                            : const Color(0xff0E0E12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: const SizedBox(
                        height: 25,
                        width: 130,
                        child: Center(
                          child: Text(
                            'Upcoming bills',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            if (selectedButtonIndex == 1) ...[
              Column(
                children: [
                  buildSubscriptionItem(
                    svgPictureAsset: spotify,
                    title: 'Spotify',
                    price: '5.99 SP',
                  ),
                  const SizedBox(height: 10),
                  buildSubscriptionItem(
                    svgPictureAsset: youtube,
                    title: 'YouTube Premium',
                    price: '5.99 SP',
                  ),
                  const SizedBox(height: 10),
                  buildSubscriptionItem(
                    svgPictureAsset: onedrive,
                    title: 'Microsoft OneDrive',
                    price: '5.99 SP',
                  ),
                ],
              ),
            ],
            if (selectedButtonIndex == 2) ...[
              Column(
                children: [
                  buildSubscriptionItem(
                    svgPictureAsset: 'images/Date.svg',
                    title: 'Spotify',
                    price: '5.99 SP',
                  ),
                  const SizedBox(height: 10),
                  buildSubscriptionItem(
                    svgPictureAsset: 'images/Date.svg',
                    title: 'YouTube Premium',
                    price: '5.99 SP',
                  ),
                  const SizedBox(height: 10),
                  buildSubscriptionItem(
                    svgPictureAsset: 'images/Date.svg',
                    title: 'Microsoft OneDrive',
                    price: '5.99 SP',
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
