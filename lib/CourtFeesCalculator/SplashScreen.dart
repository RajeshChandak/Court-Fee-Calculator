import 'dart:async';

import 'package:aarambh/CourtFeesCalculator/FirstScreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Firstscreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Center(
              child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset("assets/images/rajasthan.jpg"),
            ),
            Positioned(
              top: 160,
              left: 65,
              child: Center(
                  child: Text(
                    "Rajasthan",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: "regular",
                        color: Colors.orange),
                  )),
            ),
            Positioned(
              top:205,
              left: 36,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 90),
                child: Text(
                  "Court Fee Calculator",
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: "regular",
                      color: Colors.black87),
                ),
              )),
            )
          ])),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.asset(
              "assets/images/papa.jpg",
              width: 200,
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(child: Text("Powered By:- ")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Center(
                child: Text(
              "Chandak Law Chamber",
              style: TextStyle(fontSize: 20),
            )),
          ),
        ]));
  }
}
