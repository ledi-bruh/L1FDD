import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/models/user.dart';
import 'package:fall_2023_project/app/widgets/app_bar.dart';
import 'package:fall_2023_project/app/pages/profile_page.dart';
import 'package:fall_2023_project/app/pages/settings_page.dart';

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
            body: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                ProfilePage(),
                SettingsPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
