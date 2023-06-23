import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required int keyNumber, required Color keyColor}) =>
      Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: keyColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
          onPressed: () {
            playSound(keyNumber);
          },
          child: Text(''),
        ),
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(keyNumber: 1, keyColor: Colors.red),
                buildKey(keyNumber: 2, keyColor: Colors.orange),
                buildKey(keyNumber: 3, keyColor: Colors.yellow),
                buildKey(keyNumber: 4, keyColor: Colors.green),
                buildKey(keyNumber: 5, keyColor: Colors.teal),
                buildKey(keyNumber: 6, keyColor: Colors.blue),
                buildKey(keyNumber: 7, keyColor: Colors.deepPurple),
              ],
            ),
          ),
        ),
      );
}
