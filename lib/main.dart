import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note1.wav'));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note2.wav'));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note3.wav'));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note4.wav'));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note5.wav'));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note6.wav'));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text('Click me'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('note7.wav'));
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
