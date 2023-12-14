import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/models/card.dart';
import 'package:fall_2023_project/app/resources/colors.dart';

class TariffsAndLimitsCard extends StatelessWidget {
  const TariffsAndLimitsCard({super.key, required this.card});

  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
          ),
          child: Row(
            children: [
              Image.asset(
                card.cardImageName,
                width: 36.0,
                height: 36.0,
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      card.title,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    if (card.subtitle != null)
                      Text(
                        card.subtitle!,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 8.0,
                ),
                child: Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 24.0,
                  color: AppColors.iconSecondary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
