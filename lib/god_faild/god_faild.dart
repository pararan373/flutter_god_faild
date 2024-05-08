import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/god_faild/action/draw_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

String draw_genre = "";

void genre_shuffle(){ 
  List<String> genre = ["", "", "", "", "", ""];
  for (int i = 0; i <6 ;i++){
    genre[i]=draw();
  }  
  debugPrint('$genre');
}

List hands = [];

//riverPodで変数を監視するのさ