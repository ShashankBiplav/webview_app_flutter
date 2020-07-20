import 'dart:async';
import 'package:flutter/material.dart';

import './webview_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 1000),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>
                WebviewScreen('https://ganveer.com'))));
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(23, 209, 23, 1).withOpacity(0.5),
                  Color.fromRGBO(227, 127, 14, 1).withOpacity(0.9),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 1],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 5),
                height: deviceSize.height * 0.1,
                width: deviceSize.width * 0.5,
                child: Image.asset('assets/images/logo.png'),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              new Positioned(
                child: new Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text('Powered by: BWJ Tech Solutions'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
