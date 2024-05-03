import 'dart:math';

void draw() {
  final dice = {
    "weapon":60,
    "armor":30,
    "goods":10,
    "trade":30
  };

  final sum = dice.values.reduce((value, element) => value + element);
  final rand = Random().nextInt(sum) + 1;
  var cumlativeSum = 0;

  for (var entry in dice.entries){
    cumlativeSum += entry.value;
    if (cumlativeSum >= rand) {
      print('${entry.key}がでた。');
      break;
    }
  }
}