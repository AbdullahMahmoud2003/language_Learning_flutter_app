import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/familyModel.dart';

class familyContainer extends StatelessWidget {
  familyContainer({required this.member});

  final familyClass member;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xFF128E1C),
      child: Row(
        children: [
          Container(color: Color(0xffFEF6DB), child: Image.asset(member.image)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  member.jp,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  member.en,
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
                player.play(AssetSource(member.sound));
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
