// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderIcon.dart';
import 'reuseablecontainer.dart';

const bottomContainerHeight = 50.0;
const bottomContainerColor = Color.fromARGB(255, 3, 131, 236);
const cardColourCode = Color(0xFF1D1E33);
const inactiveCardColourCode = Color(0xFF111328);

enum Gender { male, female }

class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMI",
          style: TextStyle(
            fontFamily: 'Sedan',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableContainer(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? cardColourCode
                          : inactiveCardColourCode,
                      cardChild: const genderWidgit(
                        genderIcon: FontAwesomeIcons.mars,
                        genderName: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableContainer(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? cardColourCode
                          : inactiveCardColourCode,
                      cardChild: const genderWidgit(
                        genderIcon: FontAwesomeIcons.venus,
                        genderName: "FEMALE",
                      ),
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
