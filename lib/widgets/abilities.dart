import 'package:flutter/material.dart';

class Abilities extends StatelessWidget {
  final String imagePath;
  const Abilities({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 87,
      height: 87,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white)),
      child: Image.asset(imagePath),
    );
  }
}
