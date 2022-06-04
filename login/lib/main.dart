import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/login.dart';
import 'package:login/register.dart';
import 'package:login/splash_screen.dart';
import 'PageF.dart';
import 'mywidget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //primarySwatch: Colors.orange,
          ),
      home: SplashScreen(),
    );
  }
}
