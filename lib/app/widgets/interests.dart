import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/widgets/block.dart';
import 'package:fall_2023_project/app/resources/strings.dart';

class Interests extends StatelessWidget {
  const Interests({super.key});

  @override
  Widget build(BuildContext context) {
    return Block(
      title: Strings.interestsTitle,
      description: Strings.interestsDescription,
      child: Text("data"),
    );
  }
}
