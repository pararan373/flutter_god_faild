import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/main.dart';



class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class  _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack( 
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                    color: Colors.black,
                    width: 3,
                    )   
                  ),
                  width: 400,
                  height: 400,
                  child: Image.asset('assets/images/background_pig.png'),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Image.asset('assets/images/logo.png')
                ),
              ],
            ),
          ],//レイヤー
        ),
      ),
    );
  }
}
