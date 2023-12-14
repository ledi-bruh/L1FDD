import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/models/user.dart';
import 'package:fall_2023_project/app/models/card.dart';
import 'package:fall_2023_project/app/widgets/app_bar.dart';
import 'package:fall_2023_project/app/resources/colors.dart';
import 'package:fall_2023_project/app/pages/profile_page.dart';
import 'package:fall_2023_project/app/pages/settings_page.dart';
import 'package:fall_2023_project/app/widgets/subscriptions.dart';
import 'package:fall_2023_project/app/widgets/tariffs_and_limits.dart';
import 'package:fall_2023_project/app/widgets/interests.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    const tabCount = 2;
    return DefaultTabController(
      length: tabCount,
      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                CustomAppBar(user: user),
              ];
            },
            body: ColoredBox(
              color: AppColors.pagePrimary,
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  ProfilePage(
                    children: <Widget>[
                      Subscriptions(cards: cards),
                      TariffsAndLimits(cards: tariffsAndLLimitsCards),
                      const Interests(),
                    ],
                  ),
                  const SettingsPage(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
