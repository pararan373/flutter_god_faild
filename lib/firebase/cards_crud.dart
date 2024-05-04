
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreService{

  final carddb = FirebaseFirestore.instance;

  Future<void> create() async{

    await carddb.collection('weapons').doc('01').set(
      {
        'name':'copper club',
        'value':1,
        'money':1,
        'subtype':'nomal',
        'rarity':1,
      },
    );
    await carddb.collection('weapons').doc('02').set(
      {
        'name':'silver club',
        'value':1,
        'money':10,
        'subtype':'nomal',
        'rarity':1,
      },
    );
  }

  Future<void> read() async{
    final doc = await carddb.collection('status').doc('S01').get();
    final user_status = doc.data().toString();
    debugPrint(user_status);
  }

  Future<void> update() async{
    await carddb.collection('status').doc('S01').update(
      {
        'HP' : 36,
      }
    );
    final doc = await carddb.collection('status').doc('S01').get();
    final user_status = doc.data().toString();
    debugPrint(user_status);
  }

  Future<void> delete() async{
    await carddb.collection('status').doc('S01').delete();
  }
}
