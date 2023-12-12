import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/models/user.dart';
import 'package:fall_2023_project/app/resources/strings.dart';
import 'package:fall_2023_project/app/resources/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primary,
      expandedHeight: 250.0,
      floating: true,
      pinned: true,
      snap: false,
      leading: IconButton(
        icon: const Icon(Icons.close),
        color: AppColors.tabBrand,
        onPressed: () {},
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 14.0),
              Container(
                height: 110.0,
                width: 110.0,
                decoration: ShapeDecoration(
                  shadows: const [
                    BoxShadow(
                      color: AppColors.userImageShadow,
                      offset: Offset(0, 16),
                      blurRadius: 24.0,
                      spreadRadius: -16.0,
                    ),
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38),
                  ),
                ),
                child: Image.asset(user.imageName),
              ),
              const SizedBox(height: 36.0),
              Text(user.name),
            ],
          ),
        ),
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
