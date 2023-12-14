import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/models/card.dart';
import 'package:fall_2023_project/app/widgets/card.dart';
import 'package:fall_2023_project/app/widgets/block.dart';
import 'package:fall_2023_project/app/resources/strings.dart';

class Subscriptions extends StatelessWidget {
  const Subscriptions({super.key, required this.cards});

  final List<CardModel> cards;

  @override
  Widget build(BuildContext context) {
    return Block(
      title: Strings.subsTitle,
      description: Strings.subsDescription,
      child: SizedBox(
        width: double.infinity,
        height: 130.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 8.0);
            },
            itemCount: cards.length,
            itemBuilder: (ctx, index) {
              return CardWidget(card: cards[index]);
            },
            clipBehavior: Clip.none,
          ),
        ),
      ),
    );
  }
}
