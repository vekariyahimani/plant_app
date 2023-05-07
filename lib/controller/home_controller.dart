import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/modal/home_modal.dart';

class HomeController extends GetxController {
  RxList<HomeModal> detalis = <HomeModal>[
    HomeModal(
        image: "assets/image/Mercury1.png",
        name: "MERCURY",
        bname: "Milkyway Glaxey",
        time: "54.6m km",
        second: "3.711 m/s"),
    HomeModal(
        image: "assets/image/ve.png",
        name: "VENUS",
        bname: "Milkyway Glaxey",
        time: "50.6m km",
        second: "3.500 m/s"),
    HomeModal(
        image: "assets/image/earth1.png",
        name: "EARTH",
        bname: "Milkyway Glaxey",
        time: "60.6m km",
        second: "2.88 m/s"),
    HomeModal(
        image: "assets/image/mars1.png",
        name: "MARS",
        bname: "Milkyway Glaxey",
        time: "58.6m km",
        second: "3.454 m/s"),
    HomeModal(
        image: "assets/image/jupi.png",
        name: "JUPITER",
        bname: "Milkyway Glaxey",
        time: "54.7m km",
        second: "3.009 m/s"),
    HomeModal(
        image: "assets/image/se.png",
        name: "SATURN",
        bname: "Milkyway Glaxey",
        time: "45.6m km",
        second: "3.600 m/s"),
  ].obs;

  RxList<HomeModal> overview = <HomeModal>[
    HomeModal(
        overview:
            "Mercury From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as 11 times brighter",
    dissun: "68.072 million km",
    disearth: "83.788 million km"),
    HomeModal(
        overview:
            "Venus is the second planet from the Sun and Earth's closest planetary neighbor. Even though Mercury is closer to the Sun, Venus is the hottest planet in our solar system. Its thick atmosphere is full of the greenhouse gas carbon dioxide, and it has clouds of sulfuric acid.",
      dissun: "107.57 million km",
        disearth: "141.55 million km"
    ),
    HomeModal(
        overview:
            "Earth—our home planet—is the only place we know of so far that’s inhabited by living things. It's also the only planet in our solar system with liquid water on the surface.",
      dissun: "150.87 million km",
        disearth: "0.00 million km"),
    HomeModal(
      overview:
          "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past.",
      dissun: "250.23 million km",
        disearth: "267.55 million km"),
    HomeModal(
        overview:
            "Jupiter is more than twice as massive than the other planets of our solar system combined. The giant planet's Great Red Spot is a centuries-old storm bigger than Earth.",
      dissun: "741.1 million km",
        disearth: "883.55 million km"),
    HomeModal(
        overview:
            "Saturn Adorned with a dazzling, complex system of icy rings, Saturn is unique in our solar system. The other giant planets have rings, but none are as spectacular as Saturn's.",
      dissun: "1.46 million km",
        disearth: "1.5118 million km"),
  ].obs;
}
