import 'package:flutter/material.dart';
import 'package:toku/screens/colorsPage.dart';
import 'package:toku/screens/familyPage.dart';
import 'package:toku/screens/numbersPage.dart';
import 'package:toku/screens/phrasesPage.dart';

import '../components/category.dart';

class mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        title: Text(
          "Japanese Learning",
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: Color(0xff463228),
        toolbarHeight: 80,
      ),
      body: Column(
        children: [
          category(
            text: "Numbers",
            color: Color(0xffEF9235),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return numbers();
                  },
                ),
              );
            },
          ),
          category(
            text: "Family Members",
            color: Color(0xFF128E1C),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return family();
                  },
                ),
              );
            },
          ),
          category(
            text: "Colors",
            color: Color(0xFF8D16A8),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return colors();
                  },
                ),
              );
            },
          ),
          category(
            text: "Phrases",
            color: Color(0xFF2AAAF0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return phrases();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
