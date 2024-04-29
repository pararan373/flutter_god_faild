
import 'dart:developer';
import 'dart:html';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class battle extends StatelessWidget {
  const battle({super.key});
  @override
  Widget build(BuildContext context) {
    //画面上部に表示するバー
    final appBar = AppBar(
      backgroundColor: Color.fromARGB(255, 34, 93, 67),
      title: const Text("修行", style: TextStyle(color: Colors.white)),
    );

    return Scaffold(
      appBar: appBar,
    );
  }
}

  game_start(){
    var userStatus = {"HP":40,"MP":10,"money":20};
    var CPUStatus = {"HP":40, "MP":10, "money":20};
    var randomID = 0;
    List<int> handCardIDs = <int>[];

    for(var i=0;i < 6; i ++){
        randomID = math.Random().nextInt(55);
        debugPrint(randomID.toString());
        handCardIDs.add(randomID);
    }

    
    for(var feild = 0;feild < 100; feild ++){

    }
  }

