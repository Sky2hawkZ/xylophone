import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int fileNumber) {
    final player = AudioCache();
    player.play('note$fileNumber.wav');
  }

  Expanded buildKey({Color colorValue, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: colorValue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colorValue: Colors.red, soundNumber: 1),
              buildKey(colorValue: Colors.green, soundNumber: 2),
              buildKey(colorValue: Colors.yellow, soundNumber: 3),
              buildKey(colorValue: Colors.orange, soundNumber: 4),
              buildKey(colorValue: Colors.purple, soundNumber: 5),
              buildKey(colorValue: Colors.blue, soundNumber: 6),
              buildKey(colorValue: Colors.teal, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
