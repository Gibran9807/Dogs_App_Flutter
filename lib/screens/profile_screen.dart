import 'package:dogs_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          HeaderProfile(),
          Positioned(
            top: MediaQuery.of(context).size.width / 3,
            left: MediaQuery.of(context).size.width * 0.025,
            height: MediaQuery.of(context).size.width * 1.1,
            width: MediaQuery.of(context).size.width * 0.95,
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
          Positioned(
            top: MediaQuery.of(context).size.width / 0.67,
            left: MediaQuery.of(context).size.width * 0.025,
            right: MediaQuery.of(context).size.width * 0.025,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Text(
                  'Enim veniam irure velit in est et deserunt ut dolor dolor aliquip mollit. Pariatur esse ea culpa laborum nisi eiusmod pariatur ullamco consectetur minim duis amet fugiat. Reprehenderit ut fugiat velit velit cillum ex amet laboris ipsum. Exercitation esse magna dolore culpa nulla. Ipsum reprehenderit qui occaecat sunt irure elit eiusmod. Mollit est ad qui cupidatat ut minim aute magna adipisicing occaecat magna aliquip aliqua.'),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width / 9,
            right: MediaQuery.of(context).size.width * 0.025,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: const Color(0xFF2864ED)),
              icon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.edit,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              label: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Editar',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
