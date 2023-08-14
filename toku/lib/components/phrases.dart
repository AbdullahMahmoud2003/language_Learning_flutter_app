import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/phrasesModel.dart';

class phrasesContainer extends StatelessWidget {
  phrasesContainer({required this.phrase});

  final phrasesClass phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(0xFF2AAAF0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrase.jp,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  phrase.en,
                  style: TextStyle(color: Colors.white, fontSize: 12),
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
                player.play(AssetSource(phrase.sound));
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
