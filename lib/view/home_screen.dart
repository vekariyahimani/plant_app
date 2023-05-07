import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  Animation? isposition;
  HomeController homeController = Get.put(HomeController());
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    isposition=Tween<double>(end: 10,begin: 0).animate(animationController!);
    animationController!.repeat();
    animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff102e4a),
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            "GALAXY  PLANTES",
            style: TextStyle(color: Colors.white,fontSize: 18),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(width: 20,)
          ],
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xff102e4a),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Get.toNamed("data", arguments: index);
              },
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    child: Container(
                        height: 170,
                        width: double.infinity,
                        margin: EdgeInsets.only(
                            left: 60, bottom: 10, right: 10, top: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff203354),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 70,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 15,),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "${homeController.detalis[index].name}",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize:20,
                                                  fontWeight: FontWeight.w600,letterSpacing: 1),
                                            ),
                                            Icon(
                                              Icons.more_vert,
                                              color: Colors.white30,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Milkyway Galaxy",
                                          style: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                            "assets/image/ic_distance.png",height: 17,width: 17,),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "${homeController.detalis[index].time}",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 12),
                                        ),
                                        SizedBox(width: 15,),
                                        Image.asset(
                                            "assets/image/ic_gravity.png",height: 17,width: 17,),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "${homeController.detalis[index].second}",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  
                  Positioned(
                    top: 50,
                    child: Container(
                      height: 110,
                      width: 110,
                      child: Transform.rotate(
                        angle: isposition!.value,
                        child: Image.asset(
                            "${homeController.detalis[index].image}"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            itemCount: homeController.detalis.length),
      ),
    );
  }
}