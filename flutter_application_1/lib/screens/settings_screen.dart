import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size;
    var h = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1C1C23),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C1C23),
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () { Navigator.pop(context);},
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xFFA2A2B5),
              )),
          title: const Text('Settings',
              style: TextStyle(
                color: Color(0xFFA2A2B5),
                fontFamily: 'Inter',
                fontWeight: FontWeight.normal,
              )),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: h.height / 20,
                ),
                //Profile Pic
                Image.asset(
                  'images/Avatar.png',
                ),
                SizedBox(
                  height: h.height / 60,
                ),
                //Username
                const Text('John Doe',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                SizedBox(
                  height: h.height / 100,
                ),
                //Email
                const Text('j.doe@gmail.com',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                SizedBox(
                  height: h.height / 60,
                ),
                //Edit Profile Button
                Container(
                  width: 90,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFF282833),
                  ),
                  child: const Center(
                      child: Text('Edit Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ))),
                ),
      
                SizedBox(
                  height: h.height / 20,
                ),
      
                //Security & iCloud
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('General',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 15)),
                  ),
                ),
                Container(
                  width: w.width - 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFF282833)),
                  child: Column(
                    children: [
                      const ListTile(
                          leading: Icon(
                            Icons.face_5,
                            size: 20,
                            color: Color(0xFFA2A2B5),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Security',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text('FaceID',
                                  style: TextStyle(
                                      color: Color(0xFFA2A2B5),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)),
                            ],
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFA2A2B5),
                          )),
                      ListTile(
                          leading: const Icon(
                            Icons.cloud_outlined,
                            size: 20,
                            color: Color(0xFFA2A2B5),
                          ),
                          title: const Text('iCloud Sync',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          trailing: CupertinoSwitch(
                              trackColor: const Color(0xFF4E4E61),
                              value: false,
                              onChanged: (value) {})),
                    ],
                  ),
                ),
      
                SizedBox(
                  height: h.height / 50,
                ),
      
                //My Subscriptions
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('My Subscriptions',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 15)),
                  ),
                ),
                Container(
                  width: w.width - 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFF282833)),
                  child: const Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.sort_sharp,
                            size: 20,
                            color: Color(0xFFA2A2B5),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sorting',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text('Date',
                                  style: TextStyle(
                                      color: Color(0xFFA2A2B5),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)),
                            ],
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFA2A2B5),
                          )),
                      ListTile(
                          leading: Icon(
                            Icons.pie_chart_outline,
                            size: 20,
                            color: Color(0xFFA2A2B5),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Summary',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text('Average',
                                  style: TextStyle(
                                      color: Color(0xFFA2A2B5),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)),
                            ],
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFA2A2B5),
                          )),
                      ListTile(
                          leading: Icon(
                            Icons.money,
                            size: 20,
                            color: Color(0xFFA2A2B5),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Default Currency',
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
                                      fontSize: 12)),
                            ],
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFA2A2B5),
                          )),
                    ],
                  ),
                ),
      
                SizedBox(
                  height: h.height / 50,
                ),
      
                //Appearance
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Appearance',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 15)),
                  ),
                ),
                Container(
                  width: w.width - 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFF282833)),
                  child: const Column(
                    children: [
                      ListTile(
                          leading: Icon(
                            Icons.square_rounded,
                            size: 20,
                            color: Color(0xFFA2A2B5),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('App Icon',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text('Default',
                                  style: TextStyle(
                                      color: Color(0xFFA2A2B5),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)),
                            ],
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFA2A2B5),
                          )),
                      ListTile(
                          leading: Icon(
                            Icons.wb_sunny_outlined,
                            size: 20,
                            color: Color(0xFFA2A2B5),
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Theme',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text('Dark',
                                  style: TextStyle(
                                      color: Color(0xFFA2A2B5),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)),
                            ],
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFA2A2B5),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
