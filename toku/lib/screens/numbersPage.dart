import 'package:flutter/material.dart';
import 'package:toku/components/numbers.dart';

import '../models/numbersModel.dart';

class numbers extends StatelessWidget {
  final List<numberClass> nums = const [
    numberClass(
        en: "one",
        jp: "ichi",
        image: "assets/images/numbers/number_one.png",
        sound: "sounds/numbers/number_one_sound.mp3"),
    numberClass(
        en: "two",
        jp: "ni",
        image: "assets/images/numbers/number_two.png",
        sound: "sounds/numbers/number_two_sound.mp3"),
    numberClass(
        en: "three",
        jp: "san",
        image: "assets/images/numbers/number_three.png",
        sound: "sounds/numbers/number_three_sound.mp3"),
    numberClass(
        en: "four",
        jp: "shi",
        image: "assets/images/numbers/number_four.png",
        sound: "sounds/numbers/number_four_sound.mp3"),
    numberClass(
        en: "five",
        jp: "go",
        image: "assets/images/numbers/number_five.png",
        sound: "sounds/numbers/number_five_sound.mp3"),
    numberClass(
        en: "six",
        jp: "roku",
        image: "assets/images/numbers/number_six.png",
        sound: "sounds/numbers/number_six_sound.mp3"),
    numberClass(
        en: "seven",
        jp: "sebun",
        image: "assets/images/numbers/number_seven.png",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    numberClass(
        en: "eight",
        jp: "hachi",
        image: "assets/images/numbers/number_eight.png",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    numberClass(
        en: "nine",
        jp: "kyu",
        image: "assets/images/numbers/number_nine.png",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    numberClass(
        en: "ten",
        jp: "ju",
        image: "assets/images/numbers/number_ten.png",
        sound: "sounds/numbers/number_ten_sound.mp3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff463228),
        title: Text("Numbers"),
      ),
      body: ListView.builder(
        itemCount: nums.length,
        itemBuilder: (context, index) {
          return numbersContainer(
            number: nums[index],
          );
        },
      ),
    );
  }
}
