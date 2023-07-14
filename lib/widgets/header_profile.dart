import 'package:flutter/material.dart';

import 'headerwave.dart';

class HeaderProfile extends StatelessWidget {

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
              Navigator.pushNamed(context, 'home');
            },
            icon: Icon(
              Icons.arrow_back,
              size: 40,
              color: Colors.white,
            ),
          )),
      ],
    );
}
}