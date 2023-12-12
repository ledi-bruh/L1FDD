import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/widgets/subscriptions.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final List<Widget> blocks = const <Widget>[
    Subscriptions(),
    Text('child 1'),
    Text('child 2'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: blocks.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: blocks[index],
        );
      },
    );
  }
}
