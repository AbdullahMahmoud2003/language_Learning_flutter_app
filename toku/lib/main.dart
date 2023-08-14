import 'package:flutter/material.dart';
import 'package:toku/screens/mainPage.dart';

void main() {
  runApp(toku());
}

class toku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}
