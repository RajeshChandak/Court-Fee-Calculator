
import 'package:aarambh/CourtFeesCalculator/SplashScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rajasthan Court Fees Calculator",
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}