import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 72, 172, 222),
          title: const Center(
            child: Text("Hello World"),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 31, 46),
        body: const Center(
          child: Image(
            image: AssetImage('images/img1.jpg'),
          ),
        ),
      ),
    ),
  );
}
