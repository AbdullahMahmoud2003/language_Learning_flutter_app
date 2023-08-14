import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/colorsModel.dart';

class colorsContainer extends StatelessWidget {
  colorsContainer({required this.color});

  final colorsClass color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xFF8D16A8),
      child: Row(
        children: [
          Container(color: Color(0xffFEF6DB), child: Image.asset(color.image)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  color.jp,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  color.en,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(color.sound));
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
