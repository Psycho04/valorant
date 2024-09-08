import 'package:flutter/material.dart';
import 'package:valorant/widgets/abilities.dart';

class AgentsInfo extends StatelessWidget {
  static const routeName = 'AgentsInfo';
  const AgentsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 70,
      fontFamily: 'valorant',
      fontWeight: FontWeight.w900,
    );
    return Scaffold(
        backgroundColor: const Color(0xff06111c),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(
                  context);
            },
          ),
          title: const Text(
            'Agents',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'valorant',
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 26),
              child: ImageIcon(
                AssetImage('assets/images/appbar_icon.png'),
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: const Column(
                    children: [
                      Text('Agents', style: textStyle),
                      Text('Agents', style: textStyle),
                      Text('Agents', style: textStyle),
                      Text('Agents', style: textStyle),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/agent1.png',
                  height: 480,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'description',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'valorant',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: 'valorant',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'ABILITIES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'valorant',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Abilities(imagePath: 'assets/images/ability1.png'),
                      Abilities(imagePath: 'assets/images/ability2.png'),
                      Abilities(imagePath: 'assets/images/ability3.png'),
                      Abilities(imagePath: 'assets/images/ability4.png')
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}