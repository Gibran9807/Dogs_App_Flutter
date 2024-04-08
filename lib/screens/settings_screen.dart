import 'package:dogs_app/widgets/header.dart';
import 'package:dogs_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double _distance = 100;

  bool _isPuppySelected = false;
  bool _isAdultSelected = false;
  bool _isElderlySelected = false;

  bool _isVaccinated = true;

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
                  Text('Distancia en KM'),
                  Row(children: [
                    Expanded(
                      child: Slider(
                        value: _distance,
                        min: 0,
                        max: 120,
                        divisions: 12,
                        label: _distance.toStringAsFixed(0),
                        onChanged: (double value) {
                          setState(() {
                            _distance = value;
                          });
                        },
                      ),
                    ),
                  ]),
                ],
              ))),
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
                          Text('Cachorro'),
                          Checkbox(
                            value: _isPuppySelected,
                            onChanged: (value) {
                              setState(() {
                                _isPuppySelected = value!;
                                if (_isPuppySelected) {
                                  _isAdultSelected = false;
                                  _isElderlySelected = false;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Adulto'),
                          Checkbox(
                            value: _isAdultSelected,
                            onChanged: (value) {
                              setState(() {
                                _isAdultSelected = value!;
                                if (_isAdultSelected) {
                                  _isPuppySelected = false;
                                  _isElderlySelected = false;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Anciano'),
                          Checkbox(
                            value: _isElderlySelected,
                            onChanged: (value) {
                              setState(() {
                                _isElderlySelected = value!;
                                if (_isElderlySelected) {
                                  _isPuppySelected = false;
                                  _isAdultSelected = false;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
                          Checkbox(
                            value: _isVaccinated,
                            onChanged: (value) {
                              setState(() {
                                _isVaccinated = value!;
                              });
                            },
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('No'),
                          Checkbox(
                            value: !_isVaccinated,
                            onChanged: (value) {
                              setState(() {
                                _isVaccinated = !value!;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
