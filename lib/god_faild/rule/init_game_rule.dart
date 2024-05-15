import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/provider/player_status_provider.dart';
import 'package:flutter_application_1/provider/cpu_status_provider.dart';
import 'package:flutter_application_1/provider/current_player_provider.dart';

class InitGameRule {
  final db = FirebaseFirestore.instance;

  Future<void> initPlayerStatus(WidgetRef ref) async {
    final playerStatus = ref.read(playerStatusNotifierProvider);

    await db.collection('status').doc('S01').set(
      {
        'title': 'player_status',
        'HP': playerStatus['hp'],
        'MP': playerStatus['mp'],
        'money':playerStatus['money']
      },
    );
  }

  Future<void> initCpuStatus(WidgetRef ref) async {
    final cpuStatus = ref.read(cpuStatusNotifierProvider);

    await db.collection('status').doc('S02').set(
      {
        'title': 'cpu_status',
        'HP': cpuStatus['hp'],
        'MP': cpuStatus['mp'],
        'money': cpuStatus['money']
      },
    );
  }

  void initCurrentPlayer(WidgetRef ref) {
    final currentPlayerNotifier = ref.read(currentPlayerNotifierProvider.notifier);
    var currentPlayer = ref.read(currentPlayerNotifierProvider);

    currentPlayer = 'player';
    debugPrint(currentPlayer);
  }

  void initHandCards(WidgetRef ref) {
    // draw_cardを手札初期化用に呼び出す。
  }
}