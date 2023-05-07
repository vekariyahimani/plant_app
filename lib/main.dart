import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/view/data_screen.dart';
import 'package:plant_app/view/home_screen.dart';
import 'package:plant_app/view/splsh_screen.dart';



void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (p0) => SplshScreen(),
        'home':(p0) => HomeScreen(),
        'data':(p0) => DataScreen(),
      },
    )

  );
}