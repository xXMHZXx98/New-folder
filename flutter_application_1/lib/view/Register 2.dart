import 'package:flutter/material.dart';
import 'package:trackizer/view/Login.dart';
import 'package:trackizer/view/Register1.dart';

import '../core/Widgets/bottom_nav_bar.dart';

class Reister2 extends StatefulWidget {
  const Reister2({super.key});

  @override
  State<Reister2> createState() => _Reister2State();
}

class _Reister2State extends State<Reister2> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(color: Color(0xff1c1c23)),
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.1,
                MediaQuery.of(context).size.width * 0.2,
                MediaQuery.of(context).size.width * 0.1,
                MediaQuery.of(context).size.width * 0.02),
            child: SingleChildScrollView(
              child: Column(children: [
                const Image(image: AssetImage("images/logo.png")),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "E-mail address",
                    style: TextStyle(
                        color: const Color(0xff666680),
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.004),
                TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width),
                    filled: false,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff666680)),
                      borderRadius: BorderRadius.all(Radius.circular(
                          MediaQuery.of(context).size.width * 0.05)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff666680)),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                        color: const Color(0xff666680),
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.004),
                TextField(
                  controller: password,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width),
                    filled: false,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff666680)),
                      borderRadius: BorderRadius.all(Radius.circular(
                          MediaQuery.of(context).size.width * 0.05)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff666680)),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff353542),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5)),
                      ),
                      height: MediaQuery.of(context).size.height * 0.005,
                      width: MediaQuery.of(context).size.height * 0.09,
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width*0.005),
                    Container(
                        color:const Color(0xff353542),
                      height: MediaQuery.of(context).size.height * 0.005,
                      width: MediaQuery.of(context).size.height * 0.09,
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width*0.005),
                    Container(
                      color:const Color(0xff353542),
                      height: MediaQuery.of(context).size.height * 0.005,
                      width: MediaQuery.of(context).size.height * 0.09,
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width*0.005),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xff353542),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            topRight: Radius.circular(5)),
                      ),
                      height: MediaQuery.of(context).size.height * 0.005,
                      width: MediaQuery.of(context).size.height * 0.09,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  "Use 8 or more characters with a mix of letters, numbers & symbols.",
                  style: TextStyle(
                      color:const Color(0xff78788f),
                      fontSize: MediaQuery.of(context).size.width * 0.035),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(const Color(0xffff8705)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    maximumSize: MaterialStateProperty.all<Size>(Size(
                        MediaQuery.of(context).size.width * 0.8,
                        MediaQuery.of(context).size.height * 0.06)),
                    elevation: MaterialStateProperty.all<double>(8),
                    shadowColor:
                        MaterialStateProperty.all<Color>(const Color(0xffff8705)),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => BottomNavBar(),));
                  },
                  child: Center(
                    child: Text(
                      "Get started, it’s free!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                Text(
                  "Do you have already an account?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.03),
                ),
                 SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                // sign in
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(const Color(0xff333339)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    maximumSize: MaterialStateProperty.all<Size>(Size(
                        MediaQuery.of(context).size.width * 0.8,
                        MediaQuery.of(context).size.height * 0.06)),
                    elevation: MaterialStateProperty.all<double>(8),
                    shadowColor:
                        MaterialStateProperty.all<Color>(const Color(0xff333339)),
                  ),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context) => Login(),));
                  },
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.03),
                    ),
                  ),
                ),
              ]),
            )));
  }
}
