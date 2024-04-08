import 'package:blobs/blobs.dart';
import 'package:dogs_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
            top: MediaQuery.of(context).size.height / 7,
            left: MediaQuery.of(context).size.width / -4,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  child: Blob.fromID(
                    size: 700,
                    id: ['6-4-5037'],
                    controller: blobCtrl,
                    styles: BlobStyles(color: Color(0xFF2864ED)),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 5,
                  left: MediaQuery.of(context).size.width / 2,
                  child: Container(
                      alignment: AlignmentDirectional.center,
                      height: 30,
                      width: 200,
                      child: Text(
                        'Registrarse',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 5,
                  left: MediaQuery.of(context).size.width / 2.2,
                  child: Container(
                      alignment: AlignmentDirectional.center,
                      height: 400,
                      width: 250,
                      child: ListView(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Mail',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            obscureText: true,
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
                            child: Text(
                              'Registrarse',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            child: Text(
                              'Tienes Cuenta?',
                              style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'login');
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
