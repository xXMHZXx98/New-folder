import 'package:flutter/material.dart';
import 'package:trackizer/view/Register1.dart';

import '../core/Widgets/bottom_nav_bar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(color: Color(0xff1c1c23)),
          padding: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width * 0.1,
              MediaQuery.of(context).size.width * 0.2,
              MediaQuery.of(context).size.width * 0.1,
              MediaQuery.of(context).size.width * 0.02),
          child: Column(children: [
            const Image(image: AssetImage("images/logo.png")),
            SizedBox(height: MediaQuery.of(context).size.height * 0.25),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Login",
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),
            Row(
              children: [
                Checkbox(
                  side: const BorderSide(color: Color(0xff666680)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  value: rememberMe,
                  onChanged: (value) {
                    setState(() {
                      rememberMe = value!;
                    });
                  },
                ),
                Text(
                  "Remember me",
                  style: TextStyle(
                      color: const Color(0xff666680),
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.21),
                Text(
                  "Forgot passoword",
                  style: TextStyle(
                      color: const Color(0xff666680),
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),
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
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.04),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.1),
            Text(
              "If you don't have an account yet?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.03),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02),
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
                Navigator.push(context,MaterialPageRoute(builder:(context) => Register1(),));
              },
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.04),
                ),
              ),
            ),

          ])),
    ));
  }
}
