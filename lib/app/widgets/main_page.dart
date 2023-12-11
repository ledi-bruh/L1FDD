import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/resources/strings.dart';
import 'package:fall_2023_project/app/resources/colors.dart';
import 'package:fall_2023_project/app/widgets/app_bar.dart';
import 'package:fall_2023_project/app/widgets/block.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    const tabCount = 2;
    return DefaultTabController(
      length: tabCount,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CustomAppBar(),
            ];
          },
          body: const TabBarView(
            children: <Widget>[
              Block(
                title: Strings.subsTitle,
                description: Strings.subsDescription,
                child: Text("123"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
