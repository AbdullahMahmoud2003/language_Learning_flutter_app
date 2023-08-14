import 'package:flutter/material.dart';
import 'package:toku/components/colors.dart';
import 'package:toku/models/colorsModel.dart';

class colors extends StatelessWidget {
  final List<colorsClass> colorMembers = const [
    colorsClass(
        en: "black",
        jp: "kuro",
        image: "assets/images/colors/color_black.png",
        sound: "sounds/colors/black.wav"),
    colorsClass(
        en: "white",
        jp: "shiro",
        image: "assets/images/colors/color_white.png",
        sound: "sounds/colors/white.wav"),
    colorsClass(
        en: "red",
        jp: "aka",
        image: "assets/images/colors/color_red.png",
        sound: "sounds/colors/red.wav"),
    colorsClass(
        en: "yellow",
        jp: "ki",
        image: "assets/images/colors/yellow.png",
        sound: "sounds/colors/yellow.wav"),
    colorsClass(
        en: "gray",
        jp: "haiiro",
        image: "assets/images/colors/color_gray.png",
        sound: "sounds/colors/gray.wav"),
    colorsClass(
        en: "green",
        jp: "midori",
        image: "assets/images/colors/color_green.png",
        sound: "sounds/colors/green.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff463228),
        title: Text("Colors"),
      ),
      body: ListView.builder(
        itemCount: colorMembers.length,
        itemBuilder: (context, index) {
          return colorsContainer(color: colorMembers[index]);
        },
      ),
    );
  }
}
