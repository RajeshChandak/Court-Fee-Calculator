import 'dart:developer';
import 'dart:io';
// import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

double fee=0;
double amount = 0;

class Firstscreen extends StatefulWidget {
  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  TextEditingController _Controller = TextEditingController();
  // TextEditingController _Controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rajasthan Court Fees Calculator",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        toolbarHeight: 66,
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Color(0XFFD9D9D9),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
            child: TextField(
              controller: _Controller,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.currency_rupee_rounded,
                      color: Colors.green,
                    ),
                  ),
                  hintText: "Enter Suit Amount",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 30,
                child: Center(
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (double.parse(_Controller.text) >= 0 &&
                                double.parse(_Controller.text) <= 15000) {
                              amount = double.parse(_Controller.text);
                              fee = amount * 25 / 1000;
                            } else if (double.parse(_Controller.text) >= 15000 &&
                                double.parse(_Controller.text) <= 75000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 15000;
                              fee = 375 + (amount * 75 / 1000);
                            } else if (double.parse(_Controller.text) >= 75000 &&
                                double.parse(_Controller.text) <= 250000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 75000;
                              fee = 4875 + (amount * 70 / 1000);
                            } else if (double.parse(_Controller.text) >= 250000 &&
                                double.parse(_Controller.text) <= 500000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 250000;
                              fee = 17125 + (amount * 65 / 1000);
                            } else if (double.parse(_Controller.text) >= 500000 &&
                                double.parse(_Controller.text) <= 750000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 500000;
                              fee = 33375 + (amount * 60 / 1000);
                            } else if (double.parse(_Controller.text) >= 750000 &&
                                double.parse(_Controller.text) <= 1000000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 750000;
                              fee = 48375 + (amount * 55 / 1000);
                            } else if (double.parse(_Controller.text) >= 1000000 &&
                                double.parse(_Controller.text) <= 1500000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 1000000;
                              fee = 62125 + (amount * 50 / 1000);
                            } else if (double.parse(_Controller.text) >= 1500000 &&
                                double.parse(_Controller.text) <= 2000000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 1500000;
                              fee = 87125 + (amount * 45 / 1000);
                            } else if (double.parse(_Controller.text) >= 2000000 &&
                                double.parse(_Controller.text) <= 2500000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 2000000;
                              fee = 109625 + (amount * 40 / 1000);
                            } else if (double.parse(_Controller.text) >=
                                    2500000 &&
                                double.parse(_Controller.text) <= 3000000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 2500000;
                              fee = 129625 + (amount * 35 / 1000);
                            } else if (double.parse(_Controller.text) >=
                                    3000000 &&
                                double.parse(_Controller.text) <= 4000000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 3000000;
                              fee = 147125 + (amount * 30 / 1000);
                            } else if (double.parse(_Controller.text) >=
                                    4000000 &&
                                double.parse(_Controller.text) <= 10000000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 4000000;
                              fee = 177125 + (amount * 25 / 1000);
                            } else if (double.parse(_Controller.text) >=
                                    10000000 &&
                                double.parse(_Controller.text) <= 15000000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 10000000;
                              fee = 327125 + (amount * 20 / 1000);
                            } else if (double.parse(_Controller.text) >=
                                    15000000 &&
                                double.parse(_Controller.text) <= 20000000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 15000000;
                              fee = 427125 + (amount * 15 / 1000);
                            } else if (double.parse(_Controller.text) >=
                                    20000000 &&
                                double.parse(_Controller.text) <= 30000000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 20000000;
                              fee = 502125 + (amount * 10 / 1000);
                            } else if (double.parse(_Controller.text) >=
                                30000000) {
                              amount = double.parse(_Controller.text);
                              amount = amount - 30000000;
                              fee = 602125 + (amount * 5 / 1000);
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purpleAccent, elevation: 3),
                        child: Text(
                          "Calculate ",
                          style: TextStyle(
                              fontFamily: "regular",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )))),
          ),
          
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 2),
            child: Text("Court Fee Calculated"),
          )),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Stack(
              children:[ Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border:Border.all(color: Colors.purple)
                ),
              ),
                Positioned(
                    top: 18,
                    left: 18,
                    child: Icon(Icons.currency_rupee_rounded, color: Colors.green,)),
                Positioned(
                  left: 50,
                  top: 16,
                  child: Text(fee.toString(), style: TextStyle(fontSize: 20),),)
              ]
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:220),
            child: Stack(
              children:[ Container(
                height: 80,
                width: double.infinity,
                color: Color(0XFFD9D9D9),
                // color: Colors.white,
              ),
                Positioned(child: Center(child: Text("Chandak Law Chamber", style: TextStyle(fontFamily: "regular", fontWeight: FontWeight.w300)))),
                Positioned( top: 23 , left: 60,child: Text("Near Jassusar Gate, Bikaner (RAJ.)", style: TextStyle(fontFamily: "regular", fontWeight: FontWeight.w300),)),
                // Positioned(top: 54, left:140, child: Icon(Icons.call, size: 12,)),
                Positioned(top: 50, left: 120,child: Text("+91 94131-89751", style: TextStyle(fontFamily: "regular", fontWeight: FontWeight.w300),)),
              ]
            ),
          ),


        ],
      ),
    );
  }
}
