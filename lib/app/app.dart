import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/resources/theme.dart';
import 'package:fall_2023_project/app/resources/strings.dart';
import 'package:fall_2023_project/app/pages/main_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: AppTheme.light,
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
