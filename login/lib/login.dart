// import 'package:adobe_xd/pinned.dart';
// import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'AuditReport.dart';
//import 'PageF.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/app_bg.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // Container(),
            Container(
              padding: EdgeInsets.only(left: 150, top: 70),
              child: Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 49,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 70),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  //alignment: Alignment(-0.018, 0.037),
                                  child: SizedBox(
                                    width: 120.0,
                                    height: 40.0,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Appbar1()));
                                      },
                                      child: Text("Submit"),
                                      style: ElevatedButton.styleFrom(
                                        primary: Color.fromARGB(0, 15, 16, 17),
                                        elevation: 25,
                                        shadowColor:
                                            Color.fromARGB(255, 9, 140, 248),
                                        textStyle: TextStyle(fontSize: 16),
                                        side: BorderSide(
                                            color: Colors.black12, width: 1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // TextButton(
                                //   onPressed: () {
                                //     Navigator.push(
                                //         context,
                                //         MaterialPageRoute(
                                //             builder: (context) => changeclass()));
                                //   },
                                //   child: Text(
                                //     'Sign In',
                                //     textAlign: TextAlign.center,
                                //     style: TextStyle(
                                //         decoration: TextDecoration.underline,
                                //         color: Color(0xff4c505b),
                                //         fontWeight: FontWeight.w900,
                                //         fontSize: 20),
                                //   ),
                                //   style: ButtonStyle(),
                                // ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xff4c505b),
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
                          SizedBox(
                            height: 40,
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     TextButton(
                          //       onPressed: () {
                          //         Navigator.pushNamed(context, 'sign up');
                          //       },
                          //       child: Text(
                          //         'Sign Up',
                          //         textAlign: TextAlign.left,
                          //         style: TextStyle(
                          //             decoration: TextDecoration.underline,
                          //             color: Color(0xff4c505b),
                          //             fontWeight: FontWeight.w900,
                          //             fontSize: 20),
                          //       ),
                          //       style: ButtonStyle(),
                          //     ),
                          //     TextButton(
                          //         onPressed: () {
                          //           Navigator.push(
                          //               context,
                          //               MaterialPageRoute(
                          //                   builder: (context) =>
                          //                       myRegister()));
                          //         },
                          //         child: Text(
                          //           'Forgot Password',
                          //           style: TextStyle(
                          //             decoration: TextDecoration.underline,
                          //             color: Color(0xff4c505b),
                          //             fontWeight: FontWeight.w900,
                          //             fontSize: 20,
                          //           ),
                          //         )),
                          //     Align(
                          //       alignment: Alignment(-0.023, 0.547),
                          //       child: SizedBox(
                          //         width: 154.0,
                          //         height: 32.0,
                          //         child: Text(
                          //           'Forgot Credentials?\nContact IT Department',
                          //           style: TextStyle(
                          //             fontFamily: 'Montserrat',
                          //             fontSize: 13,
                          //             color: const Color(0xff4c505b),
                          //             fontStyle: FontStyle.italic,
                          //           ),
                          //           textAlign: TextAlign.center,
                          //           softWrap: false,
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
