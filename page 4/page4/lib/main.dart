//import 'dart:html';

import 'package:flutter/material.dart';

import 'mystatefulwidget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Smart Audit"),
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/app_bg.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 22, 121),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(left: 100, right: 100, top: 80),
                  padding: EdgeInsets.only(left: 30, top: 10),
                  width: 250,
                  height: 60,
                  child: FavoriteCity(),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 22, 121),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(left: 100, right: 100, top: 40),
                  padding: EdgeInsets.only(left: 30, top: 10),
                  width: 250,
                  height: 60,
                  child: MyStateFulWidget(),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 22, 121),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(left: 100, right: 100, top: 40),
                  padding: EdgeInsets.only(left: 30, top: 10),
                  width: 250,
                  height: 60,
                  child: second(),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 22, 121),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(left: 100, right: 100, top: 40),
                  padding: EdgeInsets.only(left: 30, top: 10),
                  width: 250,
                  height: 60,
                  child: Fourth(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
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
                      Align(
                        alignment: Alignment(-0.018, 0.037),
                        child: SizedBox(
                          width: 120.0,
                          height: 40.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyApp()));
                            },
                            child: Text("Submit"),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(0, 15, 16, 17),
                              elevation: 25,
                              shadowColor: Color.fromARGB(255, 9, 140, 248),
                              textStyle: TextStyle(fontSize: 16),
                              side: BorderSide(color: Colors.black12, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
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
          ],
        ),
      ),
    );
  }
}

//___________________________END___________________________________


