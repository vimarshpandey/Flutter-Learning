// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

const bottomContainerHeight = 50.0;
const bottomContainerColor = Color.fromARGB(255, 3, 131, 236);
const cardColourCode = Color(0xFF1D1E33);

class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableContainer(
                      colour: cardColourCode,
                    ),
                  ),
                  Expanded(
                    child: ReuseableContainer(
                      colour: cardColourCode,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableContainer(
                      colour: cardColourCode,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableContainer(
                      colour: cardColourCode,
                    ),
                  ),
                  Expanded(
                    child: ReuseableContainer(
                      colour: cardColourCode,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: bottomContainerHeight,
              margin: const EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: bottomContainerColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseableContainer extends StatelessWidget {
  const ReuseableContainer({super.key, required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
