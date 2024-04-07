import 'package:dogs_app/widgets/header.dart';
import 'package:dogs_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Header(),
      Positioned(
          top: MediaQuery.of(context).size.width / 3.5,
          left: 25,
          right: 25,
          child: Container(
            alignment: AlignmentDirectional.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Text('Distancia'),
                Row(
                  children: [
                    Expanded(flex: 3, child: TextField()),
                    Expanded(child: Text('KM'))
                  ],
                )
              ],
            ),
          )),
      Positioned(
          top: MediaQuery.of(context).size.width / 1.9,
          left: 25,
          right: 25,
          child: Container(
            alignment: AlignmentDirectional.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Text('Raza'),
                Row(
                  children: [
                    Expanded(child: dropdownButton()),
                  ],
                )
              ],
            ),
          )),
      Positioned(
          top: MediaQuery.of(context).size.width / 1.35,
          left: 25,
          right: 25,
          child: Container(
            alignment: AlignmentDirectional.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Text('Edad'),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('Cachoro'),
                            Checkbox(value: true, onChanged: ((value) {}))
                          ],
                        ),
                        Column(
                          children: [
                            Text('Adulto'),
                            Checkbox(value: false, onChanged: ((value) {}))
                          ],
                        ),
                        Column(
                          children: [
                            Text('Anciano'),
                            Checkbox(value: false, onChanged: ((value) {}))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
      Positioned(
          top: MediaQuery.of(context).size.width / 0.85,
          left: 25,
          right: 25,
          child: Container(
            alignment: AlignmentDirectional.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Text('Vacunado'),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('Si'),
                            Checkbox(value: true, onChanged: ((value) {}))
                          ],
                        ),
                        Column(
                          children: [
                            Text('No'),
                            Checkbox(value: false, onChanged: ((value) {}))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    ]));
  }
}
