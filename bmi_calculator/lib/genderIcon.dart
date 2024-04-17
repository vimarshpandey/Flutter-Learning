import 'package:flutter/material.dart';

class genderWidgit extends StatelessWidget {
  const genderWidgit(
      {super.key, required this.genderIcon, required this.genderName});

  final IconData genderIcon;
  final String genderName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          genderName,
          style: const TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        ),
      ],
    );
  }
}