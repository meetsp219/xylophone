import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  Expanded addKey(color, audioNumber) {
    return Expanded(
      flex: 1,
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(UrlSource('assets/note$audioNumber.wav'));
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                addKey(Colors.teal[100], 1),
                addKey(Colors.teal[200], 2),
                addKey(Colors.teal[300], 3),
                addKey(Colors.teal[400], 4),
                addKey(Colors.teal[500], 5),
                addKey(Colors.teal[600], 6),
                addKey(Colors.teal[700], 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
