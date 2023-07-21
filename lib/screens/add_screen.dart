import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          HeaderProfile(),
        ]));
  }
}
