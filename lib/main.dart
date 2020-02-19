import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundButton(int sound){
    final player = AudioCache();
    player.play('$sound.wav');
  }
  Expanded buttonCon({Color color, int sound}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          soundButton(sound);
        },
        child: Text('Click Me'),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
              buttonCon(color: Colors.red, sound: 1),
              buttonCon(color: Colors.orange, sound: 2),
              buttonCon(color: Colors.blue, sound: 3),
              buttonCon(color: Colors.pink, sound: 4),
              buttonCon(color: Colors.green, sound: 5),
              buttonCon(color: Colors.grey, sound: 6),
              buttonCon(color: Colors.purple, sound: 7),
          ],
          ),
        ),
      ),
    );
  }
}

