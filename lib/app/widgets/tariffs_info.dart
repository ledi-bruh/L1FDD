import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/widgets/block.dart';
import 'package:fall_2023_project/app/resources/strings.dart';

class TariffsInfo extends StatelessWidget {
  const TariffsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Block(
      title: Strings.tariffsInfoTitle,
      description: Strings.tariffsInfoDescription,
      child: Text("data"),
    );
  }
}
