import 'package:fall_2023_project/app/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/models/card.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.card});

  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.cardPrimary,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: AppColors.cardShadow1,
              offset: Offset(0.0, 8.0),
              blurRadius: 14.0,
              spreadRadius: 0.0,
            ),
            BoxShadow(
              color: AppColors.cardShadow2,
              offset: Offset(0.0, 2.0),
              blurRadius: 10.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        height: 130.0,
        width: 216.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  card.cardImageName,
                  width: 36.0,
                  height: 36.0,
                ),
                Text(card.title),
              ],
            ),
            Column(
              children: <Widget>[
                Text(card.secondaryTitle),
                Text(card.subtitle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
