import 'package:fall_2023_project/app/resources/strings.dart';

class CardModel {
  CardModel({
    required this.cardImageName,
    required this.title,
    required this.secondaryTitle,
    required this.subtitle,
  });

  final String cardImageName;
  final String title;
  final String secondaryTitle;
  final String subtitle;
}

final List<CardModel> cards = <CardModel>[
  CardModel(
    cardImageName: Strings.sberPrimeImageName,
    title: Strings.sberPrimeTitle,
    secondaryTitle: Strings.sberPrimeSecondaryTitle,
    subtitle: Strings.sberPrimeSubtitle,
  ),
  CardModel(
    cardImageName: Strings.transfersImageName,
    title: Strings.transfersTitle,
    secondaryTitle: Strings.transfersSecondaryTitle,
    subtitle: Strings.transfersSubtitle,
  ),
];
