import 'package:dogs_app/providers/UIProvider.dart';
import 'package:dogs_app/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: {
          'login': (_) => LoginScreen(),
          'home': (_) => HomeScreen(),
          'profile': (_) => ProfileScreen(),
          'add': (_) => AddScreen(),
          'register': (_) => RegisterScreen()
        },
      ),
    );
  }
}
