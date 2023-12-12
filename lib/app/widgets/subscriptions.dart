import 'package:fall_2023_project/app/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/resources/strings.dart';
import 'package:fall_2023_project/app/widgets/block.dart';
import 'package:fall_2023_project/app/models/card.dart';

class Subscriptions extends StatelessWidget {
  const Subscriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Block(
      title: Strings.subsTitle,
      description: Strings.subsDescription,
      child: CardWidget(card: cards[0])
      // ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: <Widget>[
      //     CardWidget(card: cards[0]),
      //     CardWidget(card: cards[1]),
      //   ],
      // ),
    );
  }
}
