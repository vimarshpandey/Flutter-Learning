// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderIcon.dart';
import 'reuseableContainer.dart';

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
  Color maleCardColor = inactiveCardColourCode;
  Color femaleCardColor = inactiveCardColourCode;

  void updateGenderCardColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColourCode) {
        maleCardColor = cardColourCode;
        femaleCardColor = inactiveCardColourCode;
      } else {
        maleCardColor = inactiveCardColourCode;
      }
    } else {
      if (femaleCardColor == inactiveCardColourCode) {
        femaleCardColor = cardColourCode;
        maleCardColor = inactiveCardColourCode;
      } else {
        femaleCardColor = inactiveCardColourCode;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateGenderCardColor(Gender.male);
                        });
                      },
                      child: ReuseableContainer(
                        colour: maleCardColor,
                        cardChild: const genderWidgit(
                          genderIcon: FontAwesomeIcons.mars,
                          genderName: "MALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateGenderCardColor(Gender.female);
                        });
                      },
                      child: ReuseableContainer(
                        colour: femaleCardColor,
                        cardChild: const genderWidgit(
                          genderIcon: FontAwesomeIcons.venus,
                          genderName: "FEMALE",
                        ),
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
