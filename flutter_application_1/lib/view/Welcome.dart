import 'package:flutter/material.dart';
import 'package:trackizer/view/Login.dart';
import 'package:trackizer/view/Register1.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
      color: const Color(0xff1c1c23),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Welcome Screen.png"),
                    fit: BoxFit.fill)),
          ),
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Register1()));
            },
            child: Center(
              child: Text(
                "Get started",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.04),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
              Navigator.push(context,MaterialPageRoute(builder: (context) => Login(),));
            },
            child: Center(
              child: Text(
                "I have an account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.04),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
