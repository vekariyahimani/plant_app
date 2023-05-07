import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/controller/home_controller.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen>
    with SingleTickerProviderStateMixin {
  HomeController? homeController = Get.put(HomeController());

  Animation? isposition;
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    isposition = Tween<double>(end: 10, begin: 0).animate(animationController!);
    animationController!.repeat();
    animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff102e4a),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 120, left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color(0xff203354),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        Text(
                          "${homeController!.detalis[index].name}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Milkyway Galaxy",
                          style: TextStyle(
                              color: Colors.white54,
                              fontSize: 13,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Image.asset(
                              "assets/image/ic_distance.png",
                              height: 17,
                              width: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${homeController!.detalis[index].time}",
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 13),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Image.asset(
                              "assets/image/ic_gravity.png",
                              height: 17,
                              width: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "${homeController!.detalis[index].second}",
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Column(
                    children: [
                      Text(
                        "OVERVIEW",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${homeController!.overview[index].overview}",
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                            letterSpacing: 1),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 70,
              left: 120,
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (context) {
                        return Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: double.infinity,
                                  decoration: BoxDecoration(color: Colors.blue),
                                  child: Center(
                                      child: Text(
                                    "Welcome to ${homeController!.detalis[index].name}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                                Container(
                                  height: 381,
                                  width: double.infinity,
                                  decoration:
                                      BoxDecoration(color: Color(0xff102e4a)),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                          children: [
                                            Container(
                                                height: 120,
                                                width: 120,
                                                child: Image.asset(
                                                    "${homeController!.detalis[index].image}")),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Text(
                                              "Distance to Sun",
                                              style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 15,
                                                  letterSpacing: 1),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "${homeController!.overview[index].dissun}",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(height: 23,),
                                            Text(
                                              "Distance to Earth",
                                              style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 15,
                                                  letterSpacing: 1),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "${homeController!.overview[index].disearth}",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: Positioned(
                      top: 100,
                      left: 70,
                      right: 70,
                      child: Container(
                          height: 120,
                          width: 120,
                          child: Transform.rotate(
                              angle: isposition!.value,
                              child: Image.asset(
                                  "${homeController!.detalis[index].image}")))),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
