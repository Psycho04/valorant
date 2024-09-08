import 'package:flutter/material.dart';

class MapsTap extends StatelessWidget {
  const MapsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/map.png'),
              Image.asset('assets/images/layer.png'),
              Positioned(
                right: 30,
                child: Image.asset('assets/images/map_road.png')
                ),
              const Positioned(
                left: 30,
                top: 0,
                child: Text(
                  'ASCENT',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'valorant',
                      color: Colors.white),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
