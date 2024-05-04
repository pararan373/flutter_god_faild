import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/god_faild/rule/card_select_rule.dart';

final selectedCardProvider = StateProvider<OffenseHandCard?>((ref) => null);
final riverProvider = StateProvider<List<OffenseHandCard>>((ref) => []);

void selectCard(BuildContext context, OffenseHandCard card, WidgetRef ref) {
  // カードを選択
  final selectCardNotifier = ref.read(selectedCardProvider.notifier);
  selectCardNotifier.state = card;

  // 選択したカードをRiverに追加
  final riverNotifier = ref.read(riverProvider.notifier);
  riverNotifier.state.add(card);
}

void returnCardToHand(BuildContext context, OffenseHandCard card, WidgetRef ref) {
  // Riverからカードを削除
  final riverNotifier = ref.read(riverProvider.notifier);
  riverNotifier.state.remove(card);

  // カードの選択を解除
  card.isSelected = false;
}

void selectDefenseCard(BuildContext context, DefenseHandCard card, WidgetRef ref) {
  // カードを選択
  final selectCardNotifier = ref.read(selectedDefenseCardProvider.notifier);
  selectCardNotifier.state = card;

  // 選択したカードをRiverに追加
  final riverNotifier = ref.read(defenseRiverProvider.notifier);
  riverNotifier.state.add(card);
}

final selectedDefenseCardProvider = StateProvider<DefenseHandCard?>((ref) => null);
final defenseRiverProvider = StateProvider<List<DefenseHandCard>>((ref) => []);

void returnDefenseCardToHand(BuildContext context, DefenseHandCard card, WidgetRef ref) {
  // Riverからカードを削除
  final riverNotifier = ref.read(defenseRiverProvider.notifier);
  riverNotifier.state.remove(card);

  // カードの選択を解除
  card.isSelected = false;
}
