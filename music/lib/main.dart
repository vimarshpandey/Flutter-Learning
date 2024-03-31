import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(
                  UrlSource(
                    'https://file-examples.com/storage/fe17d655216606dd89d5226/2017/11/file_example_MP3_700KB.mp3',
                  ),
                );
              },
              child: const Text(
                'Click Me',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
