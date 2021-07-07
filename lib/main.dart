import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int note_number) {
    final player = AudioCache();
    player.play('note$note_number.wav');
  }

  Expanded note_buttons(int notenumber, {Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(notenumber);
        },
        child: Text('Note $notenumber'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              note_buttons(1, color: Colors.red),
              note_buttons(2, color: Colors.orange),
              note_buttons(3, color: Colors.yellow),
              note_buttons(4, color: Colors.green),
              note_buttons(5, color: Colors.teal),
              note_buttons(6, color: Colors.blue),
              note_buttons(7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
