import 'package:flutter/material.dart';
import 'package:trackizer/view/Welcome.dart';


void main() {
  runApp(const Trackizer());
}

class Trackizer extends StatelessWidget {
  const Trackizer({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Welcome(),
    );
  }
}