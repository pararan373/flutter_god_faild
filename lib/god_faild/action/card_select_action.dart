import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/god_faild/rule/card_select_rule.dart';

final selectedCardProvider = StateProvider<OffenceHandCard?>((ref) => null);
final riverProvider = StateProvider<List<OffenceHandCard>>((ref) => []);

void selectCard(BuildContext context, OffenceHandCard card, WidgetRef ref) {
  // カードを選択
  final selectCardNotifier = ref.read(selectedCardProvider.notifier);
  selectCardNotifier.state = card;

  // 選択したカードをRiverに追加
  final riverNotifier = ref.read(riverProvider.notifier);
  riverNotifier.state.add(card);
}

void returnCardToHand(BuildContext context, OffenceHandCard card, WidgetRef ref) {
  // Riverからカードを削除
  final riverNotifier = ref.read(riverProvider.notifier);
  riverNotifier.state.remove(card);

  // カードの選択を解除
  card.isSelected = false;
}

void selectDefenceCard(BuildContext context, DefenceHandCard card, WidgetRef ref) {
  // カードを選択
  final selectCardNotifier = ref.read(selectedDefenceCardProvider.notifier);
  selectCardNotifier.state = card;

  // 選択したカードをRiverに追加
  final riverNotifier = ref.read(defenceRiverProvider.notifier);
  riverNotifier.state.add(card);
}

final selectedDefenceCardProvider = StateProvider<DefenceHandCard?>((ref) => null);
final defenceRiverProvider = StateProvider<List<DefenceHandCard>>((ref) => []);

void returnDefenceCardToHand(BuildContext context, DefenceHandCard card, WidgetRef ref) {
  // Riverからカードを削除
  final riverNotifier = ref.read(defenceRiverProvider.notifier);
  riverNotifier.state.remove(card);

  // カードの選択を解除
  card.isSelected = false;
}
