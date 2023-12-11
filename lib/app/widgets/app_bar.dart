import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/resources/strings.dart';
import 'package:fall_2023_project/app/resources/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  // todo user

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primary,
      floating: true,
      pinned: true,
      snap: false,
      leading: IconButton(
        icon: const Icon(Icons.close),
        color: AppColors.tabBrand,
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.logout),
          color: AppColors.tabBrand,
          onPressed: () {},
        )
      ],
      bottom: TabBar(
        tabs: const <Widget>[
          Tab(
            text: Strings.profile,
          ),
          Tab(
            text: Strings.settings,
          ),
        ],
        indicatorColor: AppColors.tabBrand,
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: AppColors.divider,
        labelColor: AppColors.textPrimary,
        unselectedLabelColor: AppColors.textSecondary,
      ),
    );
  }
}
