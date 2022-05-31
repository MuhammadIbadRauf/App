import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MyLogin(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          CircularProgressIndicator(),
          Align(
            alignment: Alignment(0.091, -0.631),
            child:
                // Adobe XD layer: 'logo' (shape)
                Container(
              width: 401.0,
              height: 301.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/artistic_logo.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.080, 0.7),
            child:
                // Adobe XD layer: 'logo' (shape)
                Container(
              width: 301.0,
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/SQMS Name-01.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
