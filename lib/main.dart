import 'package:flutter/material.dart';
import 'package:valorant/screens/home/agents/agents_info.dart';
import 'package:valorant/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AgentsInfo.routeName: (context) => const AgentsInfo(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Valorant',
      home: const Home(),
    );
  }
}