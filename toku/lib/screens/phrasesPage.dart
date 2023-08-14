import 'package:flutter/material.dart';
import 'package:toku/components/phrases.dart';
import 'package:toku/models/phrasesModel.dart';

class phrases extends StatelessWidget {
  final List<phrasesClass> phrasesMembers = const [
    phrasesClass(
        en: "dont forget to subscribe",
        jp: "kodoku suru koto o wasurenaide kudasai",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    phrasesClass(
        en: "i love programming",
        jp: "watashi wa puroguramingu ga daisukidesu",
        sound: "sounds/phrases/i_love_programming.wav"),
    phrasesClass(
        en: "programming is easy",
        jp: "puroguramingu wa kantandesu",
        sound: "sounds/phrases/programming_is_easy.wav"),
    phrasesClass(
        en: "where are you going?",
        jp: "doko ni iku no",
        sound: "sounds/phrases/where_are_you_going.wav"),
    phrasesClass(
        en: "what is your name?",
        jp: "namae wa nandesu ka",
        sound: "sounds/phrases/what_is_your_name.wav"),
    phrasesClass(
        en: "i love anime",
        jp: "watashi wa anime ga daisukidesu",
        sound: "sounds/phrases/i_love_anime.wav"),
    phrasesClass(
        en: "how are you feeling?",
        jp: "go kibun wa ikagadesu ka",
        sound: "sounds/phrases/how_are_you_feeling.wav"),
    phrasesClass(
        en: "are you coming?",
        jp: "kimasu ka",
        sound: "sounds/phrases/are_you_coming.wav"),
    phrasesClass(
        en: "yes i am coming",
        jp: "hai watashi wa kimasu",
        sound: "sounds/phrases/yes_im_coming.wav"),
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
        itemCount: phrasesMembers.length,
        itemBuilder: (context, index) {
          return phrasesContainer(phrase: phrasesMembers[index]);
        },
      ),
    );
  }
}
