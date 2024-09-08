import 'package:flutter/material.dart';

class GekkoContainer extends StatelessWidget {
  const GekkoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * 0.12,
          child: Container(
            width: 280,
            height: 430,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(70),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    colors: [
                  Color(0xffC7F458),
                  Color(0xff3A7233),
                ])),
          ),
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height * 0.17,
            child: Image.asset('assets/images/geko.png')),
        const Positioned(
          left: 35,
          bottom: 110,
          child: Text(
            'Gekko',
            style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w400,
                fontFamily: 'valorant'),
          ),
        )
      ],
    );
  }
}
