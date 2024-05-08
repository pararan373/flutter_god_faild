import 'dart:math';

String draw() {
  int x = 30;
  final dice = {"weapon": 60, "armor": 30, "goods": 10, "trade": x};
  String lottery;

  final sum = dice.values.reduce((value, element) => value + element);
  final rand = Random().nextInt(sum) + 1;
  var cumlativeSum = 0;

  for (var entry in dice.entries) {
    cumlativeSum += entry.value;
    if (cumlativeSum >= rand) {
      print('${entry.key}がでた。');
      lottery = entry.key;

      break;
    }
  }
  throw Exception(e);
}
