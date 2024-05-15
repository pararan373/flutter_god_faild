import 'dart:convert';
import 'dart:html';
import 'dart:js_util';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/god_faild/action/draw_card.dart';
import 'package:flutter_application_1/god_faild/rule/card_select_rule.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String draw_genre = "";
List hands = [];
int numberOfWeapons = 50;
int numberOfArmor = 30;
int numberOfGoods = 10;
int numberOfTrade = 3;

List<String> genre_shuffle(){ 
  List<String> genre = ["", "", "", "", "", ""];
  for (int i = 0; i <6 ;i++){
    genre[i]=draw();
  }  
  debugPrint('$genre');
  return genre;
}

//riverPodで変数を監視するのさ
  final db = FirebaseFirestore.instance;

  List<String> card_selection(){
    int numberOfCard = 0;
    List cardType = genre_shuffle();
    List<String> handCardIds = ["","","","","","",];
  
    for(int i = 0;i<6;i ++){
      // 乱数ジェネレーターのインスタンスを作成
      var random = Random();
      String genreInitial = "";
      // 0からnumberOfCardまでの範囲で乱数を生成
      switch(cardType[i]){
        case 'weapon': 
          numberOfCard = numberOfWeapons;
          genreInitial = "W";
        case 'armor'  : 
          numberOfCard = numberOfArmor;
          genreInitial = "A";
        case 'trade'  : 
          numberOfCard = numberOfTrade;
          genreInitial = "T";
        case 'goods'  : 
          numberOfCard = numberOfGoods;
          genreInitial = "G";
      };
    
      int randomNumber = random.nextInt(numberOfCard);
      String document = genreInitial + randomNumber.toString();
      handCardIds[i] = document;
    }
    debugPrint('$handCardIds');
    return handCardIds;
  }