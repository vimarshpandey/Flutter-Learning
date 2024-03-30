import 'dart:math';
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.lightBlueAccent[400],
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: const Center(
            child: Text(
              "Magic Ball",
            ),
          ),
        ),
        body: const MagicPage(),
      ),
    );
  }
}

class MagicPage extends StatefulWidget {
  const MagicPage({super.key});

  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int changeimgnum = 1;

  changeimage() {
    setState(() {
      changeimgnum = Random().nextInt(5) + 1;
    });
  }

  @override
  void initState() {
    super.initState();
    changeimage();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeimage();
        },
        child: Image.asset(
          'images/ball$changeimgnum.png',
        ),
      ),
    );
  }
}
