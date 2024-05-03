
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreService{

  final db = FirebaseFirestore.instance;

  Future<void> create() async{

    await db.collection('status').doc('S01').set(
      {
        'title':'User_Status',
        'HP':40,
        'MP':10,
        'money':20
      },
    );
    await db.collection('status').doc('S02').set(
      {
        'title':'CPU_Status',
        'HP':40,
        'MP':10,
        'money':20
      }
    );
  }

  Future<void> read() async{
    final doc = await db.collection('status').doc('S01').get();
    final user_status = doc.data().toString();
    debugPrint(user_status);
  }

  Future<void> update() async{
    await db.collection('status').doc('S01').update(
      {
        'HP' : 36,
      }
    );
    final doc = await db.collection('status').doc('S01').get();
    final user_status = doc.data().toString();
    debugPrint(user_status);
  }

  Future<void> delete() async{
    await db.collection('status').doc('S01').delete();
  }

}