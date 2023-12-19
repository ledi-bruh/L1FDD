import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/widgets/block.dart';
import 'package:fall_2023_project/app/widgets/interest.dart';
import 'package:fall_2023_project/app/resources/strings.dart';

class Interests extends StatelessWidget {
  const Interests({super.key});

  @override
  Widget build(BuildContext context) {
    return const Block(
      title: Strings.interestsTitle,
      description: Strings.interestsDescription,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SizedBox(
          width: double.infinity,
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: <Widget>[
              Interest(name: Strings.food, ),
              Interest(name: Strings.selfDev),
              Interest(name: Strings.tech),
              Interest(name: Strings.home),
              Interest(name: Strings.leisure),
              Interest(name: Strings.careYourself),
              Interest(name: Strings.science),
            ],
          ),
        ),
      ),
    );
  }
}
