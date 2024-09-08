import 'package:flutter/material.dart';

class WeaponsTap extends StatelessWidget {
  const WeaponsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        bool isLeftAligned = index.isEven;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 0),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                height: 129,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xff081E34),
                ),
              ),
              Positioned(
                right: isLeftAligned ? 0 : null,
                left: isLeftAligned ? null : 0,
                child: Transform(
                  alignment: Alignment.center,
                  transform: isLeftAligned
                      ? Matrix4.identity()
                      : Matrix4.rotationY(3.1416),
                  child: Image.asset('assets/images/gun1.png'),
                ),
              ),
              Positioned(
                bottom: 45,
                left: isLeftAligned ? 20 : null,
                right: isLeftAligned ? null : 20,
                child: const Text(
                  'ODIN',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'valorant',
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: isLeftAligned ? 20 : null,
                right: isLeftAligned ? null : 20,
                child: const Text(
                  'HEAVY WEAPONS',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'valorant',
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
