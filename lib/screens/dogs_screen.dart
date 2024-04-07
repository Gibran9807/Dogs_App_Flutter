import 'package:dogs_app/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

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
          child: const _ModalDetails()),
      Positioned(
        bottom: MediaQuery.of(context).size.width / 5,
        left: MediaQuery.of(context).size.width * 0.05,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.green, // <-- Button color
            foregroundColor: Colors.greenAccent, // <-- Splash color
          ),
          child: const Icon(Icons.check, color: Colors.white),
        ),
      ),
      Positioned(
        bottom: MediaQuery.of(context).size.width / 5,
        left: MediaQuery.of(context).size.width * 0.80,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
            backgroundColor: Colors.red, // <-- Button color
            foregroundColor: Colors.redAccent, // <-- Splash color
          ),
          child: const Icon(Icons.close, color: Colors.white),
        ),
      )
    ]));
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ImageSlideshow(
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width / 1,

                            /// The page to show when first creating the [ImageSlideshow].
                            initialPage: 0,

                            /// The color to paint the indicator.
                            indicatorColor: Colors.white,

                            /// The color to paint behind th indicator.
                            indicatorBackgroundColor: Colors.grey,

                            /// Do not auto scroll with null or 0.
                            autoPlayInterval: 0,

                            /// Loops back to first slide.
                            isLoop: true,

                            /// Add the sample image file into the images folder
                            children: [
                              Image.network(
                                'https://picsum.photos/250?image=1',
                                fit: BoxFit.fill,
                              ),
                              Image.network(
                                'https://picsum.photos/250?image=2',
                                fit: BoxFit.fill,
                              ),
                              Image.network(
                                'https://picsum.photos/250?image=3',
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                              'Minim ut mollit irure proident mollit. Non laboris est minim fugiat adipisicing consectetur proident ullamco esse est esse aute nisi. Elit veniam elit sint Lorem proident deserunt aute do ullamco consectetur culpa. Veniam ex est consequat ut pariatur consequat aliqua ut excepteur aute.'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.check, color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(20),
                                  backgroundColor:
                                      Colors.green, // <-- Button color
                                  foregroundColor:
                                      Colors.greenAccent, // <-- Splash color
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.close, color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(20),
                                  backgroundColor:
                                      Colors.red, // <-- Button color
                                  foregroundColor:
                                      Colors.redAccent, // <-- Splash color
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            });
      },
      child: DecoratedBox(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Image.network(
            'https://picsum.photos/250?image=1',
            fit: BoxFit.fill,
          )),
    );
  }
}
