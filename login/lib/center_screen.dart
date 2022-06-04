import 'package:flutter/material.dart';
import 'package:login/PageF.dart';

class centscreen extends StatefulWidget {
  const centscreen({Key? key}) : super(key: key);

  @override
  State<centscreen> createState() => _centscreenState();
}

class _centscreenState extends State<centscreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 80,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => changeclass()));
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.phone_iphone,
                          size: 60,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Smart",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Audit",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        )
                      ])),
              // decoration: BoxDecoration(
              //   color: Color.fromARGB(255, 0, 22, 121),
              //   borderRadius: BorderRadius.circular(50),
              // ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //___________________________!ST button End__________________

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              //padding: EdgeInsets.only(left: 30, top: 10),
              height: 80,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.analytics_outlined,
                          size: 60,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Audit",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Report",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        )
                      ])),
            ),
          )
        ],
      ),
    );
  }
}
