import 'package:flutter/material.dart';

import 'headerwave.dart';

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return Stack(
      children: [
        CustomPaint(
        painter: HeaderWaveGradiante(),
        child: Center(),
      ),
      Positioned(
          top: MediaQuery.of(context).size.width / 10,
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'profile');
            },
            icon: Icon(
              Icons.person_rounded,
              size: 50,
              color: Colors.white,
            ),
          )),
      ],
    );
}
}