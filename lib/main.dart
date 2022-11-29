import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound({int soundNumber}){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded construirTecla({Color color, int numeroSonido}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber: numeroSonido);
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
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              construirTecla(color: Colors.red, numeroSonido: 1),
              construirTecla(color: Colors.orange, numeroSonido: 2),
              construirTecla(color: Colors.yellow, numeroSonido: 3),
              construirTecla(color: Colors.green, numeroSonido: 4),
              construirTecla(color: Colors.teal, numeroSonido: 5),
              construirTecla(color: Colors.blue, numeroSonido: 6),
              construirTecla(color: Colors.purple, numeroSonido: 7),
            ],
          ),
        ),
      ),
    );
  }
}
