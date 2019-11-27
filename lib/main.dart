import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(DotaKillAnnouncer());

class DotaKillAnnouncer extends StatelessWidget {
  void playSound(String fileName) {
    final AudioCache player = AudioCache();
    player.play(fileName);
  }

  Expanded buildKey(String killName, String fileName, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(fileName);
        },
        child: Row(
          children: <Widget>[
            Icon(
              Icons.play_arrow,
              size: 35.0,
              color: Colors.white70,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              killName,
              style: TextStyle(
                fontFamily: 'Creepster',
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey('Firstblood', 'firstblood.mp3', Colors.redAccent[400]),
            buildKey('Double Kill', 'double_kill.mp3', Colors.blue[400]),
            buildKey('Triple Kill', 'triple_kill.mp3', Colors.greenAccent[400]),
            buildKey(
                'Ultra Kill', 'ultra_kill.mp3', Colors.lightBlueAccent[100]),
            buildKey('Rampage Kill', 'rampage.mp3', Colors.redAccent[700]),
          ],
        ),
      ),
    );
  }
}
