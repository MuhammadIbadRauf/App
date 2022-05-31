//import 'dart:html';

import 'package:flutter/material.dart';

import 'mystatefulwidget.dart';

void main() => runApp(const MyApp());
List<String> data1 = ["Salim", "Zohail", "Ibad"];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Smart Audit';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.black, title: const Text(_title)),
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/app_bg.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: MyStatefulWidget(
                    data: data1,
                  ),
                ),
                // Container(
                //   width: 300,
                //   child: MyStatefulWidget(),
                // ),
                // Container(
                //   width: 300,
                //   child: MyStatefulWidget(),
                // ),
                // Container(
                //   width: 300,
                //   child: MyStatefulWidget(),
                // ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromARGB(255, 21, 50, 129),
                        child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                            )),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: Text(
                          'Submit',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(255, 35, 64, 143),
                              fontWeight: FontWeight.w900,
                              fontSize: 20),
                        ),
                        style: ButtonStyle(),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromARGB(255, 22, 48, 121),
                        child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward,
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
