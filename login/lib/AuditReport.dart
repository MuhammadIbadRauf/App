import 'package:flutter/material.dart';
import 'center_screen.dart';

class Appbar1 extends StatefulWidget {
  const Appbar1({Key? key}) : super(key: key);

  @override
  State<Appbar1> createState() => _Appbar1State();
}

class _Appbar1State extends State<Appbar1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("SQMS"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              iconSize: 40,
              tooltip: "Go to Home Page",
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
            Column(
              children: [
                Center(
                  child: Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: Center(child: Text('Logout')),
                  ),
                ),
              ],
            ),
          ]),
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
            const centscreen(),
          ],
        ),
      ),
    );
  }
}
