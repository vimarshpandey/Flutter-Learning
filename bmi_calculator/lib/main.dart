// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() => runApp(const bmicalc());

class bmicalc extends StatelessWidget {
  const bmicalc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 3, 131, 236),
        ),
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          // ignore: deprecated_member_use
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const Inputpage(),
    );
  }
}
