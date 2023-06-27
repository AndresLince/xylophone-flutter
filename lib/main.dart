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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  playSound(1);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  playSound(2);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  playSound(3);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  playSound(4);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  playSound(5);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  playSound(6);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  playSound(7);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                child: Text('Click me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
