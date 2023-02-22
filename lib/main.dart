import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playSound(int soundNumber) {
    final player = new AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color clr, required int soundNumber}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(soundNumber);
        },
        child: Container(
          width: 100,
          height: 30,
          color: clr,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Xylophone")),
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(clr: Colors.red, soundNumber: 1),
            buildKey(clr: Colors.orange, soundNumber: 2),
            buildKey(clr: Colors.yellow, soundNumber: 3),
            buildKey(clr: Colors.green, soundNumber: 4),
            buildKey(clr: Colors.pink, soundNumber: 5),
            buildKey(clr: Colors.teal, soundNumber: 6),
            buildKey(clr: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
