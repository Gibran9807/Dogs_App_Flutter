import 'package:blobs/blobs.dart';
import 'package:dogs_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlobController blobCtrl = BlobController();
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.width / -2,
            left: MediaQuery.of(context).size.width / -5,
            child: Container(
              child: Blob.fromID(
                size: 500,
                id: ['6-4-5037'],
                controller: blobCtrl,
                styles: BlobStyles(color: Color(0xFFFF8D30)),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 5,
            left: MediaQuery.of(context).size.width / -5,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  child: Blob.fromID(
                    size: 650,
                    id: ['6-4-5037'],
                    controller: blobCtrl,
                    styles: BlobStyles(color: Color(0xFF2864ED)),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 5.5,
                  left: MediaQuery.of(context).size.width / 1.75,
                  child: Container(
                      alignment: AlignmentDirectional.center,
                      height: 30,
                      width: 100,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 5.5,
                  left: MediaQuery.of(context).size.width / 2.5,
                  child: Container(
                      alignment: AlignmentDirectional.center,
                      height: 250,
                      width: 250,
                      child: ListView(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFFF8D30)),
                            onPressed: () {
                              Navigator.pushNamed(context, 'home');
                            },
                            child: Text('Acceder'),
                          ),
                          TextButton(
                            child: Text(
                              'Tiene Cuenta?',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline),
                            ),
                            onPressed: () {
                              print('object');
                            },
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.40,
            left: MediaQuery.of(context).size.width / 5,
            child: Container(
              child: Blob.fromID(
                size: 500,
                id: ['6-4-5037'],
                controller: blobCtrl,
                styles: BlobStyles(color: Color(0xFFFF8D30)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
