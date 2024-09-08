import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:valorant/screens/home/agents/agents_info.dart';
import 'package:valorant/widgets/gekko.dart';

class AgentsTap extends StatelessWidget {
  final List imgList = [
    const GekkoContainer(),
    const GekkoContainer(),
    const GekkoContainer(),
  ];

  AgentsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 700,
        autoPlay: false,
        enlargeCenterPage: false,
        viewportFraction: 0.7,
      ),
      items: imgList.map((item) => InkWell(
        onTap: () {
          Navigator.pushNamed(context, AgentsInfo.routeName);
        },
        child: const GekkoContainer())).toList(),
    );
  }
}
