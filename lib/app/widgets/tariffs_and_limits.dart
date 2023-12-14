import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/models/card.dart';
import 'package:fall_2023_project/app/widgets/block.dart';
import 'package:fall_2023_project/app/widgets/tariffs_and_limits_card.dart';
import 'package:fall_2023_project/app/resources/strings.dart';
import 'package:fall_2023_project/app/resources/colors.dart';

class TariffsAndLimits extends StatelessWidget {
  const TariffsAndLimits({super.key, required this.cards});

  final List<CardModel> cards;

  @override
  Widget build(BuildContext context) {
    return Block(
      title: Strings.tariffsInfoTitle,
      description: Strings.tariffsInfoDescription,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          children: <Widget>[
            for (var (index, card) in cards.indexed) ...[
              TariffsAndLimitsCard(card: card),
              if (index < cards.length - 1)
                const Divider(
                  height: 0.0,
                  indent: 50.0,
                  color: AppColors.divider,
                ),
            ],
          ],
        ),
      ),
    );
  }
}
