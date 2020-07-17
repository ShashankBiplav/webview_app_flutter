import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/splash_screen.dart';
import './screens/webview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: WebviewScreen(),
      ),
    );
  }
}
