import 'package:flutter/material.dart';
import 'package:trackizer/view/Register%202.dart';

class Register1 extends StatelessWidget {
  const Register1({super.key});

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
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Image(image: AssetImage("images/logo.png")),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.3),
                  // apple
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        maximumSize: MaterialStateProperty.all<Size>(Size(
                            MediaQuery.of(context).size.width * 0.8,
                            MediaQuery.of(context).size.height * 0.06)),
                        elevation: MaterialStateProperty.all<double>(8),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: () {},
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(image: AssetImage("images/apple.png")),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Text(
                              "Sign up with Apple",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  // google
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        maximumSize: MaterialStateProperty.all<Size>(Size(
                            MediaQuery.of(context).size.width * 0.8,
                            MediaQuery.of(context).size.height * 0.06)),
                        elevation: MaterialStateProperty.all<double>(8),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {},
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(image: AssetImage("images/google.png")),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Text(
                              "Sign up with Google",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  // facebook
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        maximumSize: MaterialStateProperty.all<Size>(Size(
                            MediaQuery.of(context).size.width * 0.8,
                            MediaQuery.of(context).size.height * 0.06)),
                        elevation: MaterialStateProperty.all<double>(8),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {},
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(image: AssetImage("images/facebook.png")),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Text(
                              "Sign up with facebook",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  // or
                  Text("or",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          color: Colors.white)),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  // email
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff333339)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      maximumSize: MaterialStateProperty.all<Size>(Size(
                          MediaQuery.of(context).size.width * 0.8,
                          MediaQuery.of(context).size.height * 0.06)),
                      elevation: MaterialStateProperty.all<double>(8),
                      shadowColor: MaterialStateProperty.all<Color>(
                          const Color(0xff333339)),
                    ),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context) => Reister2(),));
                    },
                    child: Center(
                      child: Text(
                        "Sign up with E-mail",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.04),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Text(
                      "By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xff666680),
                        fontSize: MediaQuery.of(context).size.width * 0.030,
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
