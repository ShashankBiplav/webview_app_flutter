import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Ganveer',
      theme: ThemeData(primaryColor: Colors.orangeAccent,
      accentColor: Colors.green[600]),
      home: Scaffold(
        body:SplashScreen(),
      ),
    );
  }
}
