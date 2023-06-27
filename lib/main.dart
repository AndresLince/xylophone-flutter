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
  Expanded createKey({int soundNumber = 1, MaterialColor color = Colors.red}) {
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
              createKey(soundNumber: 1, color: Colors.red),
              createKey(soundNumber: 2, color: Colors.orange),
              createKey(soundNumber: 3, color: Colors.yellow),
              createKey(soundNumber: 4, color: Colors.green),
              createKey(soundNumber: 5, color: Colors.cyan),
              createKey(soundNumber: 6, color: Colors.blue),
              createKey(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
