import 'package:flutter/material.dart';
import 'package:toku/components/familyMembers.dart';
import 'package:toku/models/familyModel.dart';

class family extends StatelessWidget {
  final List<familyClass> members = const [
    familyClass(
        en: "father",
        jp: "otousan",
        image: "assets/images/family_members/family_father.png",
        sound: "sounds/family_members/father.wav"),
    familyClass(
        en: "mother",
        jp: "okaasan",
        image: "assets/images/family_members/family_mother.png",
        sound: "sounds/family_members/mother.wav"),
    familyClass(
        en: "older_brother",
        jp: "nisan",
        image: "assets/images/family_members/family_older_brother.png",
        sound: "sounds/family_members/older bother.wav"),
    familyClass(
        en: "older_sister",
        jp: "ane",
        image: "assets/images/family_members/family_older_sister.png",
        sound: "sounds/family_members/older sister.wav"),
    familyClass(
        en: "younger_brother",
        jp: "otouto",
        image: "assets/images/family_members/family_younger_brother.png",
        sound: "sounds/family_members/younger brohter.wav"),
    familyClass(
        en: "younger_sister",
        jp: "imouto",
        image: "assets/images/family_members/family_younger_sister.png",
        sound: "sounds/family_members/younger sister.wav"),
    familyClass(
        en: "son",
        jp: "musuko",
        image: "assets/images/family_members/family_son.png",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    familyClass(
        en: "daughter",
        jp: "musume",
        image: "assets/images/family_members/family_daughter.png",
        sound: "sounds/family_members/son.wav"),
    familyClass(
        en: "grandfather",
        jp: "sofu",
        image: "assets/images/family_members/family_grandfather.png",
        sound: "sounds/family_members/grand father.wav"),
    familyClass(
        en: "grandmother",
        jp: "obaasan",
        image: "assets/images/family_members/family_grandmother.png",
        sound: "sounds/family_members/grand mother.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff463228),
        title: Text("Family Members"),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return familyContainer(member: members[index]);
        },
      ),
    );
  }
}
