import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Expanded changenote({required int notenum, required Color color}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(
              AssetSource(
                'note$notenum.wav',
              ),
            );
          },
          child: const Text(
            '',
          ),
        ),
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
              changenote(notenum: 1, color: Colors.red),
              changenote(notenum: 2, color: Colors.orange),
              changenote(notenum: 3, color: Colors.yellow),
              changenote(notenum: 4, color: Colors.green),
              changenote(notenum: 5, color: Colors.teal),
              changenote(notenum: 6, color: Colors.blue),
              changenote(notenum: 7, color: const Color.fromARGB(255, 65, 3, 87))
            ],
          ),
        ),
      ),
    );
  }
}
