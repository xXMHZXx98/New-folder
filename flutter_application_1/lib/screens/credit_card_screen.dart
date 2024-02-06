import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trackizer/core/constants.dart';
import 'package:trackizer/screens/settings_screen.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({super.key});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size;
    var h = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C23),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1C23),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Credit Cards',
          style: TextStyle(
              color: Color(0xFFA2A2B5), fontFamily: 'Inter', fontSize: 16),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Settings(),
                    ));
              },
              child: SvgPicture.asset(
                'images/Settings.svg',
                width: 24,
              ),
            ),
          )
        ],
        leading: Text(''),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Transform(
                  alignment: FractionalOffset.center,
                  origin: const Offset(-50, 200),
                  transform: Matrix4.identity()..rotateZ(8 * 3.1415927 / 180),
                  child: Container(
                    height: h.height / 2,
                    width: w.width / 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: const LinearGradient(
                            colors: [Color(0xFF2c2c38), Color(0xFF23232c)])),
                  ),
                ),
                Positioned(
                  child: Transform(
                    alignment: FractionalOffset.center,
                    origin: const Offset(-50, 200),
                    transform: Matrix4.identity()..rotateZ(4 * 3.1415927 / 180),
                    child: Container(
                      height: h.height / 2,
                      width: w.width / 1.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: const LinearGradient(
                              colors: [Color(0xFF424354), Color(0xFF292933)])),
                    ),
                  ),
                ),
                Positioned(
                  child: Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.identity()..rotateZ(0 * 3.1415927 / 180),
                    child: Container(
                      height: h.height / 2,
                      width: w.width / 1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(
                          0xFF252530,
                        ),
                      ),
                      child: Center(
                        child: Stack(
                          children: [
                            ClipRect(
                              clipBehavior: Clip.hardEdge,
                              child: OverflowBox(
                                alignment: const Alignment(-2, 0.9),
                                maxHeight: h.height,
                                maxWidth: w.width,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      backgroundBlendMode: BlendMode.softLight,
                                      color: Colors.grey),
                                ),
                              ),
                            ),
                            ClipRect(
                              clipBehavior: Clip.hardEdge,
                              child: OverflowBox(
                                alignment: const Alignment(0, -0.5),
                                maxHeight: h.height,
                                maxWidth: w.width,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      backgroundBlendMode: BlendMode.softLight,
                                      color: Colors.grey),
                                ),
                              ),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: h.height / 30),
                                    child:
                                        Image.asset('images/MasterCard Logo.png'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: h.height / 60),
                                    child: const Text(
                                      'Virtual Card',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Inter',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: h.height / 6, bottom: h.height / 80),
                                    child: const Text(
                                      'John Doe',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: h.height / 100),
                                    child: const Text(
                                      '**** **** **** 2197',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Inter',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: h.height / 100),
                                    child: const Text(
                                      '08/28',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Image.asset('images/Chip.png'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: h.height / 30,
              ),
              //Subscription
              const Text(
                'Subscriptions',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: h.height / 200,
              ),
              //Icons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/Spotify.png'),
                  SizedBox(
                    width: w.width / 50,
                  ),
                  Image.asset('images/YouTube.png'),
                  SizedBox(
                    width: w.width / 50,
                  ),
                  Image.asset('images/OneDrive.png'),
                  SizedBox(
                    width: w.width / 50,
                  ),
                  Image.asset('images/Netflix.png'),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                height: h.height / 5.5,
                width: w.width,
                decoration: const BoxDecoration(
                    color: Color(0x0FCFCFFD),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25), topRight: Radius.circular(25))),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: h.height / 30),
                      child: DottedBorder(
                        strokeWidth: 1,
                        dashPattern: const [5],
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(18),
                        color: Colors.black,
                        child: Container(
                          height: h.height / 14,
                          width: w.width / 1.2,
                          color: Colors.transparent,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Add a new card',
                                style: TextStyle(
                                    color: Color(0xFFA2A2B5),
                                    fontFamily: 'Inter',
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.add_circle_outline,
                                color: Color(0xFFA2A2B5),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),


    );
  }
}
