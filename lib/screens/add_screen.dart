import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  bool _isVaccinated = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        HeaderProfile(),
        Positioned(
          top: MediaQuery.of(context).size.width / 3,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 19,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10.0)),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: MediaQuery.of(context).size.height / 5,
                      child: const Icon(
                        Icons.add_a_photo_outlined,
                        size: 75,
                        color: Colors.grey,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10.0)),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: MediaQuery.of(context).size.height / 5,
                      child: const Icon(
                        Icons.add_a_photo_outlined,
                        size: 75,
                        color: Colors.grey,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10.0)),
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: MediaQuery.of(context).size.height / 5,
                      child: const Icon(
                        Icons.add_a_photo_outlined,
                        size: 75,
                        color: Colors.grey,
                      )),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.25,
                    child: const TextField(
                      decoration: InputDecoration(labelText: 'Nombre'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.25,
                    child: const TextField(
                      decoration: InputDecoration(
                          labelText: 'Descripción',
                          border: OutlineInputBorder()),
                      maxLines: 4,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.25,
                    width: MediaQuery.of(context).size.width / 1.25,
                    child: ListView(
                      children: [
                        Text('Vacunado'),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
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
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.width / 0.62,
          left: 25,
          right: 25,
          child: Container(
            height: MediaQuery.of(context).size.height / 0.5,
            width: MediaQuery.of(context).size.width / 1.75,
            child: ListView(
              children: [
                Text('Raza'),
                Row(
                  children: [
                    Expanded(child: dropdownButton()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const _FloatingButton(),
    );
  }
}

class _FloatingButton extends StatelessWidget {
  const _FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.green,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {
          Navigator.pushNamed(context, 'home');
        },
        child: const Icon(
          Icons.check,
          color: Colors.white,
        ));
  }
}
