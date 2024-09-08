import 'package:flutter/material.dart';
import 'package:valorant/widgets/tab_bar_text.dart';

class TabBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabAlignment: TabAlignment.center,
      dividerColor: Colors.transparent,
      labelColor: Colors.white,
      labelPadding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02),
      labelStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: 'valorant',
      ),
      unselectedLabelColor: Colors.white,
      indicator: BoxDecoration(
        color: const Color(0xffFD4556),
        borderRadius: BorderRadius.circular(15),
      ),
      tabs: const [
        TabBarText(text: 'Agents'),
        TabBarText(text: 'Maps'),
        TabBarText(text: 'Weapons'),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
