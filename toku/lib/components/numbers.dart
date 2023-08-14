import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/numbersModel.dart';

class numbersContainer extends StatelessWidget {
  numbersContainer({required this.number});

  final numberClass number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffEF9235),
      child: Row(
        children: [
          Container(color: Color(0xffFEF6DB), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jp,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Text(
                  number.en,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
