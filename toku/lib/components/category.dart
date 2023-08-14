import 'package:flutter/material.dart';

class category extends StatelessWidget {
  category({this.text, this.color, this.onTap});

  final String? text;
  final Color? color;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        child: Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        color: color,
        height: 65,
        width: double.infinity,
      ),
    );
  }
}
