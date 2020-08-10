import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNum){
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKey({Color color, int soundNum}){
    return Expanded(
      child: FlatButton(
        color:color,
        onPressed: (){
          playSound(soundNum);
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
          child: Container(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.purple, soundNum : 1),
                buildKey(color: Colors.indigo, soundNum : 2),
                buildKey(color: Colors.blue, soundNum : 3),
                buildKey(color: Colors.green, soundNum : 4),
                buildKey(color: Colors.yellow, soundNum : 5),
                buildKey(color: Colors.orange, soundNum : 6),
                buildKey(color: Colors.red, soundNum : 7),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
