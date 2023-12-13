import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  const Block({
    super.key,
    required this.title,
    required this.description,
    required this.child,
  });

  final String title;
  final String description;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 16.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                const SizedBox(height: 8.0),
                Text(description),
              ],
            ),
          ),
        ),
        child,
      ],
    );
  }
}
