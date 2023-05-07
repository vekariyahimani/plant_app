import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plant_app/view/home_screen.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({Key? key}) : super(key: key);

  @override
  State<SplshScreen> createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 8),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff102e4a),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 270, left: 80, right: 80),
            child: Lottie.asset("assets/lottie/p2.json",
                fit: BoxFit.fitHeight, height: 200, width: 200),
          ),
          Padding(padding: EdgeInsets.only(top: 650,left: 100,right: 100),child:
            Text("Enter the Space Satal",style: TextStyle(color: Colors.white54),),)
        ],
      ),
    ));
  }
}
