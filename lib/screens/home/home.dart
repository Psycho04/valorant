import 'package:flutter/material.dart';
import 'package:valorant/screens/home/agents/agents_tap.dart';
import 'package:valorant/screens/home/maps/maps_tap.dart';
import 'package:valorant/screens/home/weapons/weapons_tap.dart';
import 'package:valorant/widgets/tab_bar_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color(0xff06111c),
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: MediaQuery.of(context).size.height * 0.2,
            backgroundColor: Colors.transparent,
            title: Column(
              children: [
                Image.asset(
                  'assets/images/Logo.png',
                  width: MediaQuery.of(context).size.width * 0.23,
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Image.asset(
                  'assets/images/Text.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            ),
            bottom: const TabBarWidget(),
            centerTitle: true,
          ),
          body: TabBarView(
              children: [AgentsTap(), const MapsTap(), const WeaponsTap()]),
        ),
      ),
    );
  }
}