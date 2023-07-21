import 'package:dogs_app/screens/dogs_screen.dart';
import 'package:dogs_app/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:provider/provider.dart';

import '../providers/UIProvider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Body(),
      floatingActionButton: _FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _NavigationBar(),
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
        backgroundColor: Color(0xFF2864ED),
        elevation: 0,
        onPressed: () {
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
                          SizedBox(
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

                              /// Add the sample image file into the images folder
                              children: [
                                Image.network(
                                  'https://picsum.photos/250?image=9',
                                  fit: BoxFit.fill,
                                ),
                                Image.network(
                                  'https://picsum.photos/250?image=9',
                                  fit: BoxFit.fill,
                                ),
                                Image.network(
                                  'https://picsum.photos/250?image=9',
                                  fit: BoxFit.fill,
                                ),
                              ],

                              /// Do not auto scroll with null or 0.
                              autoPlayInterval: 0,

                              /// Loops back to first slide.
                              isLoop: true,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text(
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
        child: Icon(Icons.add));
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: BottomNavigationBar(
            onTap: (int i) => uiProvider.selectedMenuOpt = i,
            currentIndex: currentIndex,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            backgroundColor: Color(0xFFFF8D30),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings')
            ],
          ),
        ));
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    // Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return DogsScreen();

      case 1:
        return SettingScreen();

      default:
        return DogsScreen();
    }
  }
}
