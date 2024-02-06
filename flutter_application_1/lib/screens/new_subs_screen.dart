import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:trackizer/screens/subs_info_screen.dart';

import '../core/Widgets/bottom_nav_bar.dart';

class NewSubsScreen extends StatefulWidget {
  const NewSubsScreen({super.key});

  @override
  State<NewSubsScreen> createState() => _NewSubsScreenState();
}

class _NewSubsScreenState extends State<NewSubsScreen> {
  final CarouselController _controller1 = CarouselController();
  final CarouselController _controller2 = CarouselController();
  final platforms = [
    ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset('images/OneDriveLogo.png')),
    ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset('images/HBO GO Logo.png')),
    ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset('images/SpotifyBigLogo.png')),
  ];
  final platformsNames = [
    Container(
      margin: const EdgeInsets.only(top: 30),
      child: const Text(
        'One Drive',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    ),
    Container(
      margin: const EdgeInsets.only(top: 30),
      child: const Text(
        'HGBO GO',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    ),
    Container(
      margin: const EdgeInsets.only(top: 30),
      child: const Text(
        'Spotify',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size;
    var h = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF353542),
            elevation: 0,
            title: const Text('New' , style: TextStyle(color: Colors.white),),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back_ios) , color: Colors.white,),
          ),
          backgroundColor: const Color(0xFF1C1C23),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF353542),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24)),
                      ),
                      width: w.width,
                      height: h.height / 2,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: h.height / 60, bottom: h.height / 110),
                            child: const Text(
                              'Add new \n subscription',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: h.height / 20),
                            width: w.width,
                            height: h.height / 3.2,
                            child: Column(
                              children: [
                                InkWell(
                                  onTap :()
                                  {
                                    Navigator.push(context,MaterialPageRoute(builder:(context) => const SubsInfoScreen(),));
                                  } ,
                                  child: CarouselSlider(
                                      items: platforms,
                                      carouselController: _controller1,
                                      options: CarouselOptions(
                                        autoPlay: false,
                                        height: h.height / 6,
                                        enableInfiniteScroll: false,
                                        scrollDirection: axisDirectionToAxis(
                                            AxisDirection.right),
                                        initialPage: 1,
                                        onPageChanged: (index, reason) {
                                          setState(() {
                                            _controller1.animateToPage(index);
                                            _controller2.animateToPage(index);
                                          });
                                        },
                                      )),
                                ),
                                CarouselSlider(
                                    items: platformsNames,
                                    carouselController: _controller2,
                                    options: CarouselOptions(
                                      height: h.height / 12,
                                      autoPlay: false,
                                      enableInfiniteScroll: false,
                                      scrollDirection: axisDirectionToAxis(
                                          AxisDirection.right),
                                      initialPage: 1,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _controller1.animateToPage(index);
                                          _controller2.animateToPage(index);
                                        });
                                      },
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h.height / 50,
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: h.height / 50,
                ),
                Container(
                  width: w.width,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xAA353542)),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                ),
                Container(
                  width: w.width,
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  height: h.height / 6,
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  spreadRadius: 0,
                                  offset: Offset(-1, -0.5))
                            ],
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xFF4E4E61)),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                              color: Colors.grey[600],
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Monthly Price',
                            style: TextStyle(
                                color: Color(0xFF83839C),
                                fontSize: 13,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold),
                          ),
                          const TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white , fontSize: 24),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: '5.99 SP',
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold)),
      
                          ),
                          Divider(
                            color: const Color(0xFF353542),
                            indent: w.width / 8,
                            endIndent: w.width / 8,
                            thickness: 1.5,
                            height: 0,
                          )
                        ],
                      )),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  spreadRadius: 0,
                                  offset: Offset(-1, -0.5))
                            ],
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xFF4E4E61)),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.grey[600],
                              size: 30,
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
          bottomNavigationBar: Container(
            margin: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
            width: w.width,
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color(0xFFFF8500),
                spreadRadius: 0,
                blurRadius: 25,
                offset: Offset(0, 0),
              )
            ]),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder:(context) => const BottomNavBar(),));
      
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  fixedSize: Size.fromHeight(h.height / 15),
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(999))),
              child: const Center(
                  child: Text(
                'Add this platform',
                style: TextStyle(
                    fontFamily: 'Inter',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )),
            ),
          )),
    );
  }
}
