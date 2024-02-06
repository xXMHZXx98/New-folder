import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class SubsInfoScreen extends StatefulWidget {
  const SubsInfoScreen({super.key});

  @override
  State<SubsInfoScreen> createState() => _SubsInfoScreenState();
}

class _SubsInfoScreenState extends State<SubsInfoScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size;
    var h = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF0E0E12),
        body: SingleChildScrollView(

          child: Stack(
            children: [
              //The Whole Container
              Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    //First Container
                    Container(
                      height: h.height * 0.368,
                      width: w.width,
                      decoration: const BoxDecoration(
                          color: Color(0xFF353542),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24))),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: h.height / 100,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: ()
                                  {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Color(0xFFA2A2B5),
                                  ),
                                ),
                                const Text(
                                  'Subscription Info',
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 16,
                                      color: Color(0xFFA2A2B5)),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.delete),
                                  color: const Color(0xFFA2A2B5),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h.height / 100,
                            ),
                            Image.asset(
                              'images/Spotify Logo.png',
                            ),
                            SizedBox(
                              height: h.height / 100,
                            ),
                            const Text(
                              'Spotify',
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: h.height / 100,
                            ),
                            const Text(
                              '5.99 SP',
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFA2A2B5)),
                            )
                          ],
                        ),
                      ),
                    ),

                    //Second Container
                    Container(
                        width: w.width,
                        padding: const EdgeInsets.only(bottom: 50),
                        decoration: const BoxDecoration(
                            color: Color(0xFF282833),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24))),
                        //Smaller container with items
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 25, right: 25, top: 25, bottom: 20),
                              padding: const EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                color: const Color(0xFF4E4E61),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListView(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                children: const [
                                  ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Name',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16)),
                                          Text('Spotify',
                                              style: TextStyle(
                                                  color: Color(0xFFA2A2B5),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13)),
                                        ],
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFFA2A2B5),
                                      )),
                                  ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Description',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16)),
                                          Text('Music App',
                                              style: TextStyle(
                                                  color: Color(0xFFA2A2B5),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13)),
                                        ],
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFFA2A2B5),
                                      )),
                                  ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Category',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16)),
                                          Text('Enterteintment',
                                              style: TextStyle(
                                                  color: Color(0xFFA2A2B5),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13)),
                                        ],
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFFA2A2B5),
                                      )),
                                  ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('First payment',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16)),
                                          Text('08.01.2022',
                                              style: TextStyle(
                                                  color: Color(0xFFA2A2B5),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13)),
                                        ],
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFFA2A2B5),
                                      )),
                                  ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Reminder',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16)),
                                          Text('Never',
                                              style: TextStyle(
                                                  color: Color(0xFFA2A2B5),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13)),
                                        ],
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFFA2A2B5),
                                      )),
                                  ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Currency',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16)),
                                          Text('Syrian Pound (SP)',
                                              style: TextStyle(
                                                  color: Color(0xFFA2A2B5),
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13)),
                                        ],
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xFFA2A2B5),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              width: w.width,
                              height: h.height / 17,
                              margin: const EdgeInsets.only(left: 24, right: 24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),

                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF4E4E61),
                                    shape: ContinuousRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(999))),
                                child: const Center(
                                    child: Text(
                                  'Save',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),

              //Seperater Dash Line
              Container(
                margin: EdgeInsets.only(top: h.height * 0.37,),
                padding: EdgeInsets.symmetric(horizontal: w.width / 50),
                //color: Colors.red,
                width: w.width,
                child: Row(
                  children: [
                    Container(
                      height: 27,
                      width: 27,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFF131318)),
                    ),
                    Expanded(
                      child: Dash(
                        dashColor: const Color(0xFF131318),
                        dashThickness: 2,
                        dashGap: 8,
                        length: w.width - 72,
                      ),
                    ),
                    Container(
                      height: 27,
                      width: 27,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF131318),
                      ),
                    ),
                  ],
                ),
              ) ,
            ],
          ),
        ),
      ),
    );
  }
}
