import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }
  Widget createKey(int soundNumber, MaterialColor color) {
    return  Expanded(
      child: ElevatedButton(
        onPressed: () async {
          playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: null,
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
            children: [
              createKey(1, Colors.red),
              createKey(2, Colors.orange),
              createKey(3, Colors.yellow),
              createKey(4, Colors.green),
              createKey(5, Colors.cyan),
              createKey(6, Colors.blue),
              createKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
