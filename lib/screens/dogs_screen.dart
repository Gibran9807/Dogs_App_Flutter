import 'package:dogs_app/widgets/header.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class DogsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
      Header(),
      Positioned(
          top: MediaQuery.of(context).size.width / 3,
          left: MediaQuery.of(context).size.width * 0.025,
          height: MediaQuery.of(context).size.width * 1.20,
          width: MediaQuery.of(context).size.width * 0.95,
          child: _ModalDetails()),
      Positioned(
        bottom: MediaQuery.of(context).size.width / 5,
        left: MediaQuery.of(context).size.width * 0.05,
        child: ElevatedButton(
          onPressed: () {},
          child: Icon(Icons.check, color: Colors.white),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
            backgroundColor: Colors.green, // <-- Button color
            foregroundColor: Colors.greenAccent, // <-- Splash color
          ),
        ),
      ),
      Positioned(
        bottom: MediaQuery.of(context).size.width / 5,
        left: MediaQuery.of(context).size.width * 0.80,
        child: ElevatedButton(
          onPressed: () {},
          child: Icon(Icons.close, color: Colors.white),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
            backgroundColor: Colors.red, // <-- Button color
            foregroundColor: Colors.redAccent, // <-- Splash color
          ),
        ),
      )
    ])
   );
  }
}



class _ModalDetails extends StatelessWidget {
  const _ModalDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.white,
            builder: (BuildContext context) {
              return FractionallySizedBox(
                heightFactor: 0.85,
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        DecoratedBox(
                            child: Image.network(
                              'https://picsum.photos/250?image=9',
                              fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)))),
                        const Text('Modal hello '),
                      ],
                    ),
                  ),
                ),
              );
            });
      },
      child: DecoratedBox(
          child: Image.network(
            'https://picsum.photos/250?image=9',
            fit: BoxFit.fill,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)))),
    );
  }
}