import 'package:flutter/material.dart';

class TabBarText extends StatelessWidget {
  final String text;
  const TabBarText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
      child: Tab(
        text: text,
      ),
    );
  }
}
