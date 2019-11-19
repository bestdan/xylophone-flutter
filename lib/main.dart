import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int thisSound}) {
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: color,
        onPressed: () {
          playSound(thisSound);
        },
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
              buildKey(color: Colors.red, thisSound: 1),
              buildKey(color: Colors.orange, thisSound: 2),
              buildKey(color: Colors.yellow, thisSound: 3),
              buildKey(color: Colors.greenAccent, thisSound: 4),
              buildKey(color: Colors.green, thisSound: 5),
              buildKey(color: Colors.blue, thisSound: 6),
              buildKey(color: Colors.purple, thisSound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
